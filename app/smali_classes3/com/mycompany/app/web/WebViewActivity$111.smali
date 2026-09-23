.class Lcom/mycompany/app/web/WebViewActivity$111;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebNestView$WebBackListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$111;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefPdf;->L:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$111;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->H8:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->J8:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->R6()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    new-instance v0, Lcom/mycompany/app/web/WebViewActivity$111$1;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebViewActivity$111$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$111;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
