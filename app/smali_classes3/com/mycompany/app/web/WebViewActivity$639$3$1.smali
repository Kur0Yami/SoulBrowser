.class Lcom/mycompany/app/web/WebViewActivity$639$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$639$3;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$639$3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$639$3$1;->c:Lcom/mycompany/app/web/WebViewActivity$639$3;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$639$3$1;->c:Lcom/mycompany/app/web/WebViewActivity$639$3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$639$3;->a:Lcom/mycompany/app/web/WebViewActivity$639;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$639;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    iget-wide v1, v0, Lcom/mycompany/app/web/WebViewActivity;->jo:J

    .line 8
    .line 9
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/main/MainApp;->g(J)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
