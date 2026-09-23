.class Lcom/mycompany/app/dialog/DialogViewSrc$29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic f:Lcom/mycompany/app/dialog/DialogViewSrc;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewSrc;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewSrc$29;->f:Lcom/mycompany/app/dialog/DialogViewSrc;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogViewSrc$29;->c:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc$29;->f:Lcom/mycompany/app/dialog/DialogViewSrc;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->J:Lcom/mycompany/app/view/MyMainRelative;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->r0:Lcom/mycompany/app/view/MySnackbar;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MySnackbar;->i(Z)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->r0:Lcom/mycompany/app/view/MySnackbar;

    .line 21
    .line 22
    :cond_1
    new-instance v1, Lcom/mycompany/app/view/MySnackbar;

    .line 23
    .line 24
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->G:Lcom/mycompany/app/main/MainActivity;

    .line 25
    .line 26
    invoke-direct {v1, v2}, Lcom/mycompany/app/view/MySnackbar;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->r0:Lcom/mycompany/app/view/MySnackbar;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewSrc$29;->c:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->r0:Lcom/mycompany/app/view/MySnackbar;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->J:Lcom/mycompany/app/view/MyMainRelative;

    .line 42
    .line 43
    sget v2, Lnet/kaki87/soul2/testing/R$string;->save_fail:I

    .line 44
    .line 45
    new-instance v3, Lcom/mycompany/app/dialog/DialogViewSrc$29$1;

    .line 46
    .line 47
    invoke-direct {v3, p0}, Lcom/mycompany/app/dialog/DialogViewSrc$29$1;-><init>(Lcom/mycompany/app/dialog/DialogViewSrc$29;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0, v2, v3}, Lcom/mycompany/app/view/MySnackbar;->v(Landroid/view/ViewGroup;ILcom/mycompany/app/view/MySnackbar$SnackbarListener;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->r0:Lcom/mycompany/app/view/MySnackbar;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->J:Lcom/mycompany/app/view/MyMainRelative;

    .line 57
    .line 58
    sget v2, Lnet/kaki87/soul2/testing/R$string;->save_success:I

    .line 59
    .line 60
    new-instance v3, Lcom/mycompany/app/dialog/DialogViewSrc$29$2;

    .line 61
    .line 62
    invoke-direct {v3, p0}, Lcom/mycompany/app/dialog/DialogViewSrc$29$2;-><init>(Lcom/mycompany/app/dialog/DialogViewSrc$29;)V

    .line 63
    .line 64
    .line 65
    const/4 v4, 0x1

    .line 66
    invoke-virtual {v1, v0, v2, v4, v3}, Lcom/mycompany/app/view/MySnackbar;->w(Landroid/view/ViewGroup;IILcom/mycompany/app/view/MySnackbar$SnackbarListener;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method
