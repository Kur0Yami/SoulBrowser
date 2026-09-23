.class Lcom/mycompany/app/dialog/DialogExtract$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogExtract;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogExtract;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogExtract$5;->c:Lcom/mycompany/app/dialog/DialogExtract;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogExtract$5;->c:Lcom/mycompany/app/dialog/DialogExtract;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->i0:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->c0:Ljava/util/List;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-virtual {v2, v4, v4, v3, v4}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 25
    .line 26
    .line 27
    new-array v2, v1, [Lcom/mycompany/app/view/MyRoundImage;

    .line 28
    .line 29
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->k0:[Lcom/mycompany/app/view/MyRoundImage;

    .line 30
    .line 31
    new-array v2, v1, [Landroidx/appcompat/widget/AppCompatTextView;

    .line 32
    .line 33
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->l0:[Landroid/widget/TextView;

    .line 34
    .line 35
    new-array v2, v1, [Landroid/view/View;

    .line 36
    .line 37
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->m0:[Landroid/view/View;

    .line 38
    .line 39
    new-array v2, v1, [Lcom/mycompany/app/view/MyEditText;

    .line 40
    .line 41
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->n0:[Lcom/mycompany/app/view/MyEditText;

    .line 42
    .line 43
    new-array v2, v1, [Landroid/view/View;

    .line 44
    .line 45
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->o0:[Landroid/view/View;

    .line 46
    .line 47
    new-array v2, v1, [Landroidx/appcompat/widget/AppCompatTextView;

    .line 48
    .line 49
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->p0:[Landroid/widget/TextView;

    .line 50
    .line 51
    new-array v2, v1, [Lcom/mycompany/app/view/MyProgressBar;

    .line 52
    .line 53
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->q0:[Lcom/mycompany/app/view/MyProgressBar;

    .line 54
    .line 55
    new-array v2, v1, [Landroidx/appcompat/widget/AppCompatTextView;

    .line 56
    .line 57
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->r0:[Landroid/widget/TextView;

    .line 58
    .line 59
    new-array v2, v1, [Lcom/mycompany/app/view/MyProgressBar;

    .line 60
    .line 61
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->s0:[Lcom/mycompany/app/view/MyProgressBar;

    .line 62
    .line 63
    new-array v2, v1, [Landroidx/appcompat/widget/AppCompatTextView;

    .line 64
    .line 65
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->t0:[Landroid/widget/TextView;

    .line 66
    .line 67
    new-array v2, v1, [Landroidx/appcompat/widget/AppCompatTextView;

    .line 68
    .line 69
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->u0:[Landroid/widget/TextView;

    .line 70
    .line 71
    new-array v2, v1, [Lcom/mycompany/app/view/MyEditPure;

    .line 72
    .line 73
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->v0:[Landroid/widget/EditText;

    .line 74
    .line 75
    new-array v2, v1, [Landroid/view/View;

    .line 76
    .line 77
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->w0:[Landroid/view/View;

    .line 78
    .line 79
    new-array v2, v1, [Landroidx/appcompat/widget/AppCompatTextView;

    .line 80
    .line 81
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->x0:[Landroid/widget/TextView;

    .line 82
    .line 83
    new-array v2, v1, [Landroidx/appcompat/widget/AppCompatTextView;

    .line 84
    .line 85
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->y0:[Landroid/widget/TextView;

    .line 86
    .line 87
    new-array v2, v1, [Landroidx/appcompat/widget/AppCompatTextView;

    .line 88
    .line 89
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->z0:[Landroid/widget/TextView;

    .line 90
    .line 91
    new-array v2, v1, [Ljava/lang/String;

    .line 92
    .line 93
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->A0:[Ljava/lang/String;

    .line 94
    .line 95
    iput v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->d0:I

    .line 96
    .line 97
    iput v4, v0, Lcom/mycompany/app/dialog/DialogExtract;->e0:I

    .line 98
    .line 99
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 100
    .line 101
    if-nez v1, :cond_3

    .line 102
    .line 103
    :goto_0
    return-void

    .line 104
    :cond_3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogExtract;->Q0:Ljava/lang/Runnable;

    .line 105
    .line 106
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    .line 108
    .line 109
    return-void
.end method
