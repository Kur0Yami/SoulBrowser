.class Lcom/mycompany/app/web/WebViewActivity$567;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$567;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefTts;->j:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$567;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/mycompany/app/web/WebViewActivity$567$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebViewActivity$567$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$567;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->A6()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
