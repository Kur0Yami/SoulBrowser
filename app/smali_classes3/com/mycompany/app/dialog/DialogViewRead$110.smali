.class Lcom/mycompany/app/dialog/DialogViewRead$110;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic f:Lcom/mycompany/app/dialog/DialogViewRead;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$110;->f:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogViewRead$110;->c:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$110;->f:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->C1:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->c:Z

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->c()V

    .line 14
    .line 15
    .line 16
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->N2:Lcom/mycompany/app/view/MySnackbar;

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MySnackbar;->i(Z)V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->N2:Lcom/mycompany/app/view/MySnackbar;

    .line 26
    .line 27
    :cond_2
    new-instance v1, Lcom/mycompany/app/view/MySnackbar;

    .line 28
    .line 29
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogViewRead;->f:Lcom/mycompany/app/main/MainActivity;

    .line 30
    .line 31
    invoke-direct {v1, v2}, Lcom/mycompany/app/view/MySnackbar;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->N2:Lcom/mycompany/app/view/MySnackbar;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewRead$110;->c:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->N2:Lcom/mycompany/app/view/MySnackbar;

    .line 45
    .line 46
    sget v2, Lnet/kaki87/soul2/testing/R$string;->save_fail:I

    .line 47
    .line 48
    new-instance v3, Lcom/mycompany/app/dialog/DialogViewRead$110$1;

    .line 49
    .line 50
    invoke-direct {v3, p0}, Lcom/mycompany/app/dialog/DialogViewRead$110$1;-><init>(Lcom/mycompany/app/dialog/DialogViewRead$110;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v0, v2, v3}, Lcom/mycompany/app/view/MySnackbar;->v(Landroid/view/ViewGroup;ILcom/mycompany/app/view/MySnackbar$SnackbarListener;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->N2:Lcom/mycompany/app/view/MySnackbar;

    .line 58
    .line 59
    sget v2, Lnet/kaki87/soul2/testing/R$string;->save_success:I

    .line 60
    .line 61
    new-instance v3, Lcom/mycompany/app/dialog/DialogViewRead$110$2;

    .line 62
    .line 63
    invoke-direct {v3, p0}, Lcom/mycompany/app/dialog/DialogViewRead$110$2;-><init>(Lcom/mycompany/app/dialog/DialogViewRead$110;)V

    .line 64
    .line 65
    .line 66
    const/4 v4, 0x1

    .line 67
    invoke-virtual {v1, v0, v2, v4, v3}, Lcom/mycompany/app/view/MySnackbar;->w(Landroid/view/ViewGroup;IILcom/mycompany/app/view/MySnackbar$SnackbarListener;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method
