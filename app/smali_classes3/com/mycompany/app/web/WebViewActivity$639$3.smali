.class Lcom/mycompany/app/web/WebViewActivity$639$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MySnackbar$SnackbarListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity$639;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$639;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$639$3;->a:Lcom/mycompany/app/web/WebViewActivity$639;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method

.method public final c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$639$3;->a:Lcom/mycompany/app/web/WebViewActivity$639;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$639;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-wide v1, v0, Lcom/mycompany/app/web/WebViewActivity;->jo:J

    .line 6
    .line 7
    const-wide/16 v3, -0x1

    .line 8
    .line 9
    cmp-long v1, v1, v3

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$639$3$1;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$639$3$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$639$3;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$639$3;->a:Lcom/mycompany/app/web/WebViewActivity$639;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$639;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->u3:Lcom/mycompany/app/view/MySnackbar;

    .line 7
    .line 8
    return-void
.end method
