.class Lcom/mycompany/app/web/WebSnsInsta$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebSnsInsta;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebSnsInsta;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebSnsInsta$8;->c:Lcom/mycompany/app/web/WebSnsInsta;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSnsInsta$8;->c:Lcom/mycompany/app/web/WebSnsInsta;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebSnsInsta;->l:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/web/WebSnsInsta;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v0, "(function(){try{android.onDocHtml(document.documentElement.innerHTML);}catch(e){android.onDocHtml(null);}})();"

    .line 14
    .line 15
    invoke-static {v1, v0, v2}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    :goto_0
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebSnsInsta;->j:Z

    .line 20
    .line 21
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebSnsInsta;->k:Z

    .line 22
    .line 23
    return-void
.end method
