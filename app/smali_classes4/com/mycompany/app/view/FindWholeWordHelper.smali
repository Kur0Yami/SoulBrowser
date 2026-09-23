.class public final Lcom/mycompany/app/view/FindWholeWordHelper;
.super Ljava/lang/Object;
.source "FindWholeWordHelper.java"

.field private final static CLEAR_JS:Ljava/lang/String; = "(function(){try{var marks=document.querySelectorAll('mark[data-soul-ww]');for(var i=0;i<marks.length;i++){var m=marks[i],p=m.parentNode;if(!p)continue;while(m.firstChild)p.insertBefore(m.firstChild,m);p.removeChild(m);p.normalize();}window.__soulWwMarks=null;window.__soulWwIndex=-1;var s=window.getSelection();if(s)s.removeAllRanges();}catch(e){}})();"

.field private final static NEXT_JS_PREFIX:Ljava/lang/String; = "(function(fwd){try{var marks=window.__soulWwMarks;if(!marks||!marks.length)return 0;var i=window.__soulWwIndex|0;if(i<0||i>=marks.length)i=0;marks[i].style.backgroundColor='#f1e189';i=fwd?(i+1)%marks.length:(i-1+marks.length)%marks.length;window.__soulWwIndex=i;marks[i].style.backgroundColor='#ff9632';try{marks[i].scrollIntoView({block:'center',inline:'nearest'});}catch(e){marks[i].scrollIntoView(true);}return 1;}catch(e){return 0;}})("

.field private final static SEARCH_JS_PREFIX:Ljava/lang/String; = "(function(q,ww,cs){try{function clear(){var marks=document.querySelectorAll('mark[data-soul-ww]');for(var i=0;i<marks.length;i++){var m=marks[i],p=m.parentNode;if(!p)continue;while(m.firstChild)p.insertBefore(m.firstChild,m);p.removeChild(m);p.normalize();}window.__soulWwMarks=null;window.__soulWwIndex=-1;}clear();if(!q)return 0;var esc=q.replace(/[.*+?^${}()|[\\]\\\\]/g,'\\\\$&');var re=new RegExp(esc,cs?'g':'gi');function isWord(ch){return !!ch && /[A-Za-z0-9_\\u00C0-\\u024F]/.test(ch);}var root=document.body;if(!root)return 0;var tw=document.createTreeWalker(root,NodeFilter.SHOW_TEXT,{acceptNode:function(n){if(!n.nodeValue||!String(n.nodeValue).trim())return NodeFilter.FILTER_REJECT;var el=n.parentElement;if(!el)return NodeFilter.FILTER_REJECT;var tag=el.closest('script,style,noscript,textarea,input,mark[data-soul-ww]');return tag?NodeFilter.FILTER_REJECT:NodeFilter.FILTER_ACCEPT;}});var nodes=[];while(tw.nextNode())nodes.push(tw.currentNode);var out=[];for(var ni=0;ni<nodes.length;ni++){var node=nodes[ni],text=node.nodeValue,matches=[],m;re.lastIndex=0;while((m=re.exec(text))){var s=m.index,e=s+m[0].length;if(ww){var b=s>0?text.charAt(s-1):'';var a=e<text.length?text.charAt(e):'';if(isWord(b)||isWord(a))continue;}matches.push([s,e]);}if(!matches.length)continue;for(var mi=matches.length-1;mi>=0;mi--){var start=matches[mi][0],end=matches[mi][1];node.splitText(end);var mid=node.splitText(start);var mark=document.createElement('mark');mark.setAttribute('data-soul-ww','1');mark.style.backgroundColor='#f1e189';mark.style.color='inherit';mid.parentNode.insertBefore(mark,mid);mark.appendChild(mid);out.unshift(mark);window.__soulWwMarks=out;}}window.__soulWwMarks=out;window.__soulWwIndex=out.length?0:-1;if(out.length){out[0].style.backgroundColor='#ff9632';try{out[0].scrollIntoView({block:'center',inline:'nearest'});}catch(e2){out[0].scrollIntoView(true);}}return out.length;}catch(e){try{return (window.__soulWwMarks&&window.__soulWwMarks.length)||0;}catch(e2){return 0;}}})("

.method private constructor <init>()V
  .registers 1
  .line 76
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static clear(Landroid/webkit/WebView;)V
  .registers 3
    if-nez p0, :L0
    return-void
  :L0
  .line 83
    const-string v0, "(function(){try{var marks=document.querySelectorAll('mark[data-soul-ww]');for(var i=0;i<marks.length;i++){var m=marks[i],p=m.parentNode;if(!p)continue;while(m.firstChild)p.insertBefore(m.firstChild,m);p.removeChild(m);p.normalize();}window.__soulWwMarks=null;window.__soulWwIndex=-1;var s=window.getSelection();if(s)s.removeAllRanges();}catch(e){}})();"
    const/4 v1, 0
    invoke-virtual { p0, v0, v1 }, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    return-void
.end method

.method public static findNext(Landroid/webkit/WebView;ZLandroid/webkit/ValueCallback;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/webkit/WebView;",
      "Z",
      "Landroid/webkit/ValueCallback<",
      "Ljava/lang/Boolean;",
      ">;)V"
    }
  .end annotation
  .registers 5
    if-nez p0, :L1
    if-eqz p2, :L0
  .line 126
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    invoke-interface { p2, p0 }, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
  :L0
    return-void
  :L1
    if-eqz p1, :L2
  .line 130
    const-string p1, "true"
    goto :L3
  :L2
    const-string p1, "false"
  :L3
    new-instance v0, Ljava/lang/StringBuilder;
    const-string v1, "(function(fwd){try{var marks=window.__soulWwMarks;if(!marks||!marks.length)return 0;var i=window.__soulWwIndex|0;if(i<0||i>=marks.length)i=0;marks[i].style.backgroundColor='#f1e189';i=fwd?(i+1)%marks.length:(i-1+marks.length)%marks.length;window.__soulWwIndex=i;marks[i].style.backgroundColor='#ff9632';try{marks[i].scrollIntoView({block:'center',inline:'nearest'});}catch(e){marks[i].scrollIntoView(true);}return 1;}catch(e){return 0;}})("
    invoke-direct { v0, v1 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p1
    const-string v0, ")"
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p1
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
  .line 131
    new-instance v0, Lcom/mycompany/app/view/FindWholeWordHelper$2;
    invoke-direct { v0, p2 }, Lcom/mycompany/app/view/FindWholeWordHelper$2;-><init>(Landroid/webkit/ValueCallback;)V
    invoke-virtual { p0, p1, v0 }, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    return-void
.end method

.method static parseCount(Ljava/lang/String;)I
  .catch Ljava/lang/Exception; { :L1 .. :L2 } :L3
  .registers 5
    const/4 v0, 0
    if-eqz p0, :L3
  .line 143
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v1
    if-eqz v1, :L3
    const-string v1, "null"
    invoke-virtual { v1, p0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L0
    goto :L3
  :L0
  .line 146
    invoke-virtual { p0 }, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object p0
  .line 147
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v1
    const/4 v2, 2
    if-lt v1, v2, :L1
    invoke-virtual { p0, v0 }, Ljava/lang/String;->charAt(I)C
    move-result v1
    const/16 v2, 34
    if-ne v1, v2, :L1
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v1
    const/4 v3, 1
    sub-int/2addr v1, v3
    invoke-virtual { p0, v1 }, Ljava/lang/String;->charAt(I)C
    move-result v1
    if-ne v1, v2, :L1
  .line 148
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v1
    sub-int/2addr v1, v3
    invoke-virtual { p0, v3, v1 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object p0
  :L1
  .line 151
    invoke-static { p0 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result p0
  :L2
    return p0
  :L3
    return v0
.end method

.method public static search(Landroid/webkit/WebView;Ljava/lang/String;ZZLandroid/webkit/ValueCallback;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/webkit/WebView;",
      "Ljava/lang/String;",
      "ZZ",
      "Landroid/webkit/ValueCallback<",
      "Ljava/lang/Integer;",
      ">;)V"
    }
  .end annotation
  .registers 7
    const/4 v0, 0
  .line 94
    invoke-static { v0 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    if-nez p0, :L1
    if-eqz p4, :L0
    invoke-interface { p4, v0 }, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
  :L0
    return-void
  :L1
  .line 98
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v1
    if-eqz v1, :L3
  .line 99
    invoke-static { p0 }, Lcom/mycompany/app/view/FindWholeWordHelper;->clear(Landroid/webkit/WebView;)V
    if-eqz p4, :L2
  .line 101
    invoke-interface { p4, v0 }, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
  :L2
    return-void
  :L3
  .line 106
    invoke-static { p1 }, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
  .line 108
    const-string v0, "true"
    const-string v1, "false"
    if-eqz p2, :L4
    move-object p2, v0
    goto :L5
  :L4
    move-object p2, v1
  :L5
    if-eqz p3, :L6
    goto :L7
  :L6
    move-object v0, v1
  :L7
  .line 110
    new-instance p3, Ljava/lang/StringBuilder;
    const-string v1, "(function(q,ww,cs){try{function clear(){var marks=document.querySelectorAll('mark[data-soul-ww]');for(var i=0;i<marks.length;i++){var m=marks[i],p=m.parentNode;if(!p)continue;while(m.firstChild)p.insertBefore(m.firstChild,m);p.removeChild(m);p.normalize();}window.__soulWwMarks=null;window.__soulWwIndex=-1;}clear();if(!q)return 0;var esc=q.replace(/[.*+?^${}()|[\\]\\\\]/g,'\\\\$&');var re=new RegExp(esc,cs?'g':'gi');function isWord(ch){return !!ch && /[A-Za-z0-9_\\u00C0-\\u024F]/.test(ch);}var root=document.body;if(!root)return 0;var tw=document.createTreeWalker(root,NodeFilter.SHOW_TEXT,{acceptNode:function(n){if(!n.nodeValue||!String(n.nodeValue).trim())return NodeFilter.FILTER_REJECT;var el=n.parentElement;if(!el)return NodeFilter.FILTER_REJECT;var tag=el.closest('script,style,noscript,textarea,input,mark[data-soul-ww]');return tag?NodeFilter.FILTER_REJECT:NodeFilter.FILTER_ACCEPT;}});var nodes=[];while(tw.nextNode())nodes.push(tw.currentNode);var out=[];for(var ni=0;ni<nodes.length;ni++){var node=nodes[ni],text=node.nodeValue,matches=[],m;re.lastIndex=0;while((m=re.exec(text))){var s=m.index,e=s+m[0].length;if(ww){var b=s>0?text.charAt(s-1):'';var a=e<text.length?text.charAt(e):'';if(isWord(b)||isWord(a))continue;}matches.push([s,e]);}if(!matches.length)continue;for(var mi=matches.length-1;mi>=0;mi--){var start=matches[mi][0],end=matches[mi][1];node.splitText(end);var mid=node.splitText(start);var mark=document.createElement('mark');mark.setAttribute('data-soul-ww','1');mark.style.backgroundColor='#f1e189';mark.style.color='inherit';mid.parentNode.insertBefore(mark,mid);mark.appendChild(mid);out.unshift(mark);window.__soulWwMarks=out;}}window.__soulWwMarks=out;window.__soulWwIndex=out.length?0:-1;if(out.length){out[0].style.backgroundColor='#ff9632';try{out[0].scrollIntoView({block:'center',inline:'nearest'});}catch(e2){out[0].scrollIntoView(true);}}return out.length;}catch(e){try{return (window.__soulWwMarks&&window.__soulWwMarks.length)||0;}catch(e2){return 0;}}})("
    invoke-direct { p3, v1 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { p3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p1
    const-string p3, ","
    invoke-virtual { p1, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p1
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p1
    invoke-virtual { p1, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p1
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p1
    const-string p2, ")"
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p1
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
  .line 112
    new-instance p2, Lcom/mycompany/app/view/FindWholeWordHelper$1;
    invoke-direct { p2, p4 }, Lcom/mycompany/app/view/FindWholeWordHelper$1;-><init>(Landroid/webkit/ValueCallback;)V
    invoke-virtual { p0, p1, p2 }, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    return-void
.end method
