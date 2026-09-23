package com.mycompany.app.view;

import android.text.TextUtils;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import org.json.JSONObject;

/**
 * Custom find highlighting via injected {@code <mark>} tags.
 * Used when native {@code findAllAsync} cannot express whole-word and/or
 * case-sensitive matching.
 */
public final class FindWholeWordHelper {

    private static final String CLEAR_JS =
            "(function(){try{"
                    + "var marks=document.querySelectorAll('mark[data-soul-ww]');"
                    + "for(var i=0;i<marks.length;i++){var m=marks[i],p=m.parentNode;if(!p)continue;"
                    + "while(m.firstChild)p.insertBefore(m.firstChild,m);p.removeChild(m);p.normalize();}"
                    + "window.__soulWwMarks=null;window.__soulWwIndex=-1;"
                    + "var s=window.getSelection();if(s)s.removeAllRanges();"
                    + "}catch(e){}})();";

    private static final String SEARCH_JS_PREFIX =
            "(function(q,ww,cs){try{"
                    + "function clear(){var marks=document.querySelectorAll('mark[data-soul-ww]');"
                    + "for(var i=0;i<marks.length;i++){var m=marks[i],p=m.parentNode;if(!p)continue;"
                    + "while(m.firstChild)p.insertBefore(m.firstChild,m);p.removeChild(m);p.normalize();}"
                    + "window.__soulWwMarks=null;window.__soulWwIndex=-1;}"
                    + "clear();"
                    + "if(!q)return 0;"
                    + "var esc=q.replace(/[.*+?^${}()|[\\]\\\\]/g,'\\\\$&');"
                    + "var re=new RegExp(esc,cs?'g':'gi');"
                    + "function isWord(ch){return !!ch && /[A-Za-z0-9_\\u00C0-\\u024F]/.test(ch);}"
                    + "var root=document.body;if(!root)return 0;"
                    + "var tw=document.createTreeWalker(root,NodeFilter.SHOW_TEXT,{"
                    + "acceptNode:function(n){if(!n.nodeValue||!String(n.nodeValue).trim())return NodeFilter.FILTER_REJECT;"
                    + "var el=n.parentElement;if(!el)return NodeFilter.FILTER_REJECT;"
                    + "var tag=el.closest('script,style,noscript,textarea,input,mark[data-soul-ww]');"
                    + "return tag?NodeFilter.FILTER_REJECT:NodeFilter.FILTER_ACCEPT;}});"
                    + "var nodes=[];while(tw.nextNode())nodes.push(tw.currentNode);"
                    + "var out=[];"
                    + "for(var ni=0;ni<nodes.length;ni++){"
                    + "var node=nodes[ni],text=node.nodeValue,matches=[],m;re.lastIndex=0;"
                    + "while((m=re.exec(text))){var s=m.index,e=s+m[0].length;"
                    + "if(ww){var b=s>0?text.charAt(s-1):'';var a=e<text.length?text.charAt(e):'';"
                    + "if(isWord(b)||isWord(a))continue;}"
                    + "matches.push([s,e]);}"
                    + "if(!matches.length)continue;"
                    + "for(var mi=matches.length-1;mi>=0;mi--){"
                    + "var start=matches[mi][0],end=matches[mi][1];"
                    + "node.splitText(end);var mid=node.splitText(start);"
                    + "var mark=document.createElement('mark');mark.setAttribute('data-soul-ww','1');"
                    + "mark.style.backgroundColor='#f1e189';mark.style.color='inherit';"
                    + "mid.parentNode.insertBefore(mark,mid);mark.appendChild(mid);"
                    + "out.unshift(mark);window.__soulWwMarks=out;}"
                    + "}"
                    + "window.__soulWwMarks=out;window.__soulWwIndex=out.length?0:-1;"
                    + "if(out.length){out[0].style.backgroundColor='#ff9632';"
                    + "try{out[0].scrollIntoView({block:'center',inline:'nearest'});}catch(e2){out[0].scrollIntoView(true);}}"
                    + "return out.length;"
                    + "}catch(e){try{return (window.__soulWwMarks&&window.__soulWwMarks.length)||0;}catch(e2){return 0;}}})(";

    private static final String NEXT_JS_PREFIX =
            "(function(fwd){try{"
                    + "var marks=window.__soulWwMarks;if(!marks||!marks.length)return 0;"
                    + "var i=window.__soulWwIndex|0;if(i<0||i>=marks.length)i=0;"
                    + "marks[i].style.backgroundColor='#f1e189';"
                    + "i=fwd?(i+1)%marks.length:(i-1+marks.length)%marks.length;"
                    + "window.__soulWwIndex=i;"
                    + "marks[i].style.backgroundColor='#ff9632';"
                    + "try{marks[i].scrollIntoView({block:'center',inline:'nearest'});}catch(e){marks[i].scrollIntoView(true);}"
                    + "return 1;"
                    + "}catch(e){return 0;}})(";

    private FindWholeWordHelper() {
    }

    public static void clear(WebView webView) {
        if (webView == null) {
            return;
        }
        webView.evaluateJavascript(CLEAR_JS, null);
    }

    public static void search(
            WebView webView,
            String query,
            boolean wholeWord,
            boolean caseSensitive,
            final ValueCallback<Integer> callback) {
        if (webView == null) {
            if (callback != null) {
                callback.onReceiveValue(0);
            }
            return;
        }
        if (TextUtils.isEmpty(query)) {
            clear(webView);
            if (callback != null) {
                callback.onReceiveValue(0);
            }
            return;
        }
        String js = SEARCH_JS_PREFIX
                + JSONObject.quote(query)
                + ","
                + (wholeWord ? "true" : "false")
                + ","
                + (caseSensitive ? "true" : "false")
                + ")";
        webView.evaluateJavascript(js, new ValueCallback<String>() {
            @Override
            public void onReceiveValue(String value) {
                if (callback == null) {
                    return;
                }
                callback.onReceiveValue(Integer.valueOf(parseCount(value)));
            }
        });
    }

    public static void findNext(WebView webView, boolean forward, final ValueCallback<Boolean> callback) {
        if (webView == null) {
            if (callback != null) {
                callback.onReceiveValue(Boolean.FALSE);
            }
            return;
        }
        String js = NEXT_JS_PREFIX + (forward ? "true" : "false") + ")";
        webView.evaluateJavascript(js, new ValueCallback<String>() {
            @Override
            public void onReceiveValue(String value) {
                if (callback == null) {
                    return;
                }
                callback.onReceiveValue(Boolean.valueOf(parseCount(value) > 0));
            }
        });
    }

    static int parseCount(String value) {
        if (value == null || value.length() == 0 || "null".equals(value)) {
            return 0;
        }
        String t = value.trim();
        if (t.length() >= 2 && t.charAt(0) == '"' && t.charAt(t.length() - 1) == '"') {
            t = t.substring(1, t.length() - 1);
        }
        try {
            return Integer.parseInt(t);
        } catch (Exception unused) {
            return 0;
        }
    }
}
