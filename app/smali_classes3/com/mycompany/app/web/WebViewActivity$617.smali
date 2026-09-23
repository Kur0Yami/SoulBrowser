.class Lcom/mycompany/app/web/WebViewActivity$617;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$617;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$617;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Gn:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-string v3, "span[class=\'page-desc\']"

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    if-ne v1, v2, :cond_1

    .line 12
    .line 13
    const-string v3, "div[class=\'mobile-navbar-inner\']"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v3, 0x0

    .line 17
    :goto_0
    if-nez v3, :cond_2

    .line 18
    .line 19
    return-void

    .line 20
    :cond_2
    const-string v4, "function myComic(doc){if(!doc)return false;var ele=doc.querySelector(\""

    .line 21
    .line 22
    const-string v5, "\");if(!ele)return false;"

    .line 23
    .line 24
    invoke-static {v4, v3, v5}, Landroid/support/v4/media/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    const-string v4, "if(ele.parentNode.innerHTML.includes(\'Captcha\'))return true;"

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    :cond_3
    const-string v4, "android.onComicDet("

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ");return true;}(function(){if(myComic(document))return;if(!document.documentElement||window.sb_comic_osv)return;window.sb_comic_osv=new MutationObserver(e=>{for(var i=0;i<e.length;i++){var tgt=e[i].target;if(myComic(tgt)){if(window.sb_comic_osv){window.sb_comic_osv.disconnect();window.sb_comic_osv=null;}break;}if(tgt.tagName==\'BODY\')break;}}),window.sb_comic_osv.observe(document.documentElement,{childList:!0,subtree:!0});})();"

    .line 44
    .line 45
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
