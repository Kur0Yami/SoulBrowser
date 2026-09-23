.class Lcom/mycompany/app/dialog/DialogExtract$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lcom/mycompany/app/dialog/DialogExtract$11;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogExtract$11;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogExtract$11$1;->g:Lcom/mycompany/app/dialog/DialogExtract$11;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogExtract$11$1;->c:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogExtract$11$1;->f:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogExtract$11$1;->g:Lcom/mycompany/app/dialog/DialogExtract$11;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract$11;->a:Lcom/mycompany/app/dialog/DialogExtract;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogExtract;->p0:[Landroid/widget/TextView;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogExtract$11$1;->c:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogExtract;->K0:Ljava/lang/String;

    .line 13
    .line 14
    iget v2, v1, Lcom/mycompany/app/dialog/DialogExtract;->D0:I

    .line 15
    .line 16
    iput v2, v1, Lcom/mycompany/app/dialog/DialogExtract;->H0:I

    .line 17
    .line 18
    iget v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->F0:I

    .line 19
    .line 20
    iput v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->I0:I

    .line 21
    .line 22
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->k0:[Lcom/mycompany/app/view/MyRoundImage;

    .line 23
    .line 24
    aget-object v3, v3, v2

    .line 25
    .line 26
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/dialog/DialogExtract;->G(Lcom/mycompany/app/view/MyRoundImage;I)V

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract$11;->a:Lcom/mycompany/app/dialog/DialogExtract;

    .line 30
    .line 31
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogExtract;->l0:[Landroid/widget/TextView;

    .line 32
    .line 33
    iget v1, v1, Lcom/mycompany/app/dialog/DialogExtract;->D0:I

    .line 34
    .line 35
    aget-object v1, v2, v1

    .line 36
    .line 37
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogExtract$11$1;->f:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract$11;->a:Lcom/mycompany/app/dialog/DialogExtract;

    .line 43
    .line 44
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogExtract;->p0:[Landroid/widget/TextView;

    .line 45
    .line 46
    iget v1, v1, Lcom/mycompany/app/dialog/DialogExtract;->D0:I

    .line 47
    .line 48
    aget-object v1, v2, v1

    .line 49
    .line 50
    const-string v2, "0.00%"

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract$11;->a:Lcom/mycompany/app/dialog/DialogExtract;

    .line 56
    .line 57
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogExtract;->q0:[Lcom/mycompany/app/view/MyProgressBar;

    .line 58
    .line 59
    iget v1, v1, Lcom/mycompany/app/dialog/DialogExtract;->D0:I

    .line 60
    .line 61
    aget-object v1, v2, v1

    .line 62
    .line 63
    const/16 v2, 0x64

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyProgressBar;->setMax(I)V

    .line 66
    .line 67
    .line 68
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogExtract$11;->a:Lcom/mycompany/app/dialog/DialogExtract;

    .line 69
    .line 70
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->q0:[Lcom/mycompany/app/view/MyProgressBar;

    .line 71
    .line 72
    iget v0, v0, Lcom/mycompany/app/dialog/DialogExtract;->D0:I

    .line 73
    .line 74
    aget-object v0, v1, v0

    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyProgressBar;->setProgress(F)V

    .line 78
    .line 79
    .line 80
    return-void
.end method
