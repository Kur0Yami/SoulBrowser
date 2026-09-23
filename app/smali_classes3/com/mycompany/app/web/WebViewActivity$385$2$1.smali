.class Lcom/mycompany/app/web/WebViewActivity$385$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$385$2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$385$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$385$2$1;->c:Lcom/mycompany/app/web/WebViewActivity$385$2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$385$2$1;->c:Lcom/mycompany/app/web/WebViewActivity$385$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$385$2;->c:Lcom/mycompany/app/web/WebViewActivity$385;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$385;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebViewActivity;->U9(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$385;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->T4()V

    .line 19
    .line 20
    .line 21
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$385;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 22
    .line 23
    new-instance v2, Lcom/mycompany/app/view/MySnackbar;

    .line 24
    .line 25
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity$385;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 26
    .line 27
    invoke-direct {v2, v3}, Lcom/mycompany/app/view/MySnackbar;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    iput-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->u3:Lcom/mycompany/app/view/MySnackbar;

    .line 31
    .line 32
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$385;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 33
    .line 34
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->u3:Lcom/mycompany/app/view/MySnackbar;

    .line 35
    .line 36
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity;->g2:Lcom/google/android/material/appbar/AppBarLayout;

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MySnackbar;->setAppBarView(Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$385;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 42
    .line 43
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->yl:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 44
    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->u3:Lcom/mycompany/app/view/MySnackbar;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 50
    .line 51
    sget v2, Lnet/kaki87/soul2/testing/R$string;->save_fail:I

    .line 52
    .line 53
    new-instance v3, Lcom/mycompany/app/web/WebViewActivity$385$2$1$1;

    .line 54
    .line 55
    invoke-direct {v3, p0}, Lcom/mycompany/app/web/WebViewActivity$385$2$1$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$385$2$1;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v0, v2, v3}, Lcom/mycompany/app/view/MySnackbar;->v(Landroid/view/ViewGroup;ILcom/mycompany/app/view/MySnackbar$SnackbarListener;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->u3:Lcom/mycompany/app/view/MySnackbar;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 65
    .line 66
    sget v2, Lnet/kaki87/soul2/testing/R$string;->save_success:I

    .line 67
    .line 68
    new-instance v3, Lcom/mycompany/app/web/WebViewActivity$385$2$1$2;

    .line 69
    .line 70
    invoke-direct {v3, p0}, Lcom/mycompany/app/web/WebViewActivity$385$2$1$2;-><init>(Lcom/mycompany/app/web/WebViewActivity$385$2$1;)V

    .line 71
    .line 72
    .line 73
    const/4 v4, 0x2

    .line 74
    invoke-virtual {v1, v0, v2, v4, v3}, Lcom/mycompany/app/view/MySnackbar;->w(Landroid/view/ViewGroup;IILcom/mycompany/app/view/MySnackbar$SnackbarListener;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method
