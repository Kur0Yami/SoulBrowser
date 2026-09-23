.class Lcom/mycompany/app/dialog/DialogCapture$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic f:Lcom/mycompany/app/dialog/DialogCapture;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogCapture;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCapture$17;->f:Lcom/mycompany/app/dialog/DialogCapture;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogCapture$17;->c:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCapture$17;->f:Lcom/mycompany/app/dialog/DialogCapture;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCapture;->F:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->c()V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCapture;->X:Lcom/mycompany/app/view/MySnackbar;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MySnackbar;->i(Z)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogCapture;->X:Lcom/mycompany/app/view/MySnackbar;

    .line 21
    .line 22
    :cond_1
    new-instance v1, Lcom/mycompany/app/view/MySnackbar;

    .line 23
    .line 24
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogCapture;->w:Lcom/mycompany/app/main/MainActivity;

    .line 25
    .line 26
    invoke-direct {v1, v3}, Lcom/mycompany/app/view/MySnackbar;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogCapture;->X:Lcom/mycompany/app/view/MySnackbar;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogCapture$17;->c:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/4 v3, 0x1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    sput-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 41
    .line 42
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCapture;->X:Lcom/mycompany/app/view/MySnackbar;

    .line 43
    .line 44
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogCapture;->F:Landroid/widget/FrameLayout;

    .line 45
    .line 46
    sget v4, Lnet/kaki87/soul2/testing/R$string;->save_fail:I

    .line 47
    .line 48
    new-instance v5, Lcom/mycompany/app/dialog/DialogCapture$17$1;

    .line 49
    .line 50
    invoke-direct {v5, p0}, Lcom/mycompany/app/dialog/DialogCapture$17$1;-><init>(Lcom/mycompany/app/dialog/DialogCapture$17;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v3, v4, v5}, Lcom/mycompany/app/view/MySnackbar;->v(Landroid/view/ViewGroup;ILcom/mycompany/app/view/MySnackbar$SnackbarListener;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogCapture;->w:Lcom/mycompany/app/main/MainActivity;

    .line 57
    .line 58
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    sput-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 63
    .line 64
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCapture;->X:Lcom/mycompany/app/view/MySnackbar;

    .line 65
    .line 66
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogCapture;->F:Landroid/widget/FrameLayout;

    .line 67
    .line 68
    sget v5, Lnet/kaki87/soul2/testing/R$string;->save_success:I

    .line 69
    .line 70
    new-instance v6, Lcom/mycompany/app/dialog/DialogCapture$17$2;

    .line 71
    .line 72
    invoke-direct {v6, p0}, Lcom/mycompany/app/dialog/DialogCapture$17$2;-><init>(Lcom/mycompany/app/dialog/DialogCapture$17;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v4, v5, v3, v6}, Lcom/mycompany/app/view/MySnackbar;->w(Landroid/view/ViewGroup;IILcom/mycompany/app/view/MySnackbar$SnackbarListener;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogCapture;->w:Lcom/mycompany/app/main/MainActivity;

    .line 79
    .line 80
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 81
    .line 82
    .line 83
    return-void
.end method
