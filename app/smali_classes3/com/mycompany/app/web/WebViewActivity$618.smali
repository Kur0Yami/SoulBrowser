.class Lcom/mycompany/app/web/WebViewActivity$618;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$618;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$618;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Hn:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-string v4, "span[class=\'page-desc\']"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    if-ne v1, v3, :cond_1

    .line 13
    .line 14
    const-string v4, "div[class=\'mobile-navbar-inner\']"

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move-object v4, v2

    .line 18
    :goto_0
    if-nez v4, :cond_2

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_2
    if-nez v1, :cond_3

    .line 22
    .line 23
    const-string v2, "float:right;width:28px;height:28px;padding:0;border:2px solid #818181;border-radius:14px;font-size:18px;text-align:center;color:white;background:black;"

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_3
    if-ne v1, v3, :cond_4

    .line 27
    .line 28
    const-string v2, "margin-top:8px;margin-left:10px;width:28px;height:28px;padding:0;border:none;border-radius:14px;font-size:18px;font-weight:bold;text-align:center;color:white;background:black;"

    .line 29
    .line 30
    :cond_4
    :goto_1
    if-nez v2, :cond_5

    .line 31
    .line 32
    :goto_2
    return-void

    .line 33
    :cond_5
    const-string v5, "\");if(!ele)return;for(var i=0;i<ele.childNodes.length;i++){var bid=ele.childNodes[i].id;if(bid==\'sb_comic_view\')return;}var btn=document.createElement(\"button\");btn.id=\'sb_comic_view\';btn.innerHTML=\'\u26f6\';btn.style=\'"

    .line 34
    .line 35
    const-string v6, "\';btn.onclick=function(e){e.stopPropagation();android.onComicView("

    .line 36
    .line 37
    const-string v7, "(function(){var ele=document.querySelector(\""

    .line 38
    .line 39
    invoke-static {v7, v4, v5, v2, v6}, Landroidx/work/impl/workers/a;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ");};ele.appendChild(btn);})();"

    .line 47
    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v0, v1, v3}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
