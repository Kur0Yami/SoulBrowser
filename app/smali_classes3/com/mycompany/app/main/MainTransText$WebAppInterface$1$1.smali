.class Lcom/mycompany/app/main/MainTransText$WebAppInterface$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainTransText$WebAppInterface$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTransText$WebAppInterface$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainTransText$WebAppInterface$1$1;->c:Lcom/mycompany/app/main/MainTransText$WebAppInterface$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTransText$WebAppInterface$1$1;->c:Lcom/mycompany/app/main/MainTransText$WebAppInterface$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/MainTransText$WebAppInterface$1;->c:Lcom/mycompany/app/main/MainTransText$WebAppInterface;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/main/MainTransText$WebAppInterface;->a:Lcom/mycompany/app/main/MainTransText;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/main/MainTransText;->g:Lcom/mycompany/app/view/MyWebSafe;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-string v1, "(function(){android.onDocHtml(document.documentElement.innerHTML);})();"

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
