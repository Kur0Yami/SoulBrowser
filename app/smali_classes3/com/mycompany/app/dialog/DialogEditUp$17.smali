.class Lcom/mycompany/app/dialog/DialogEditUp$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogEditUp;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditUp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditUp$17;->a:Lcom/mycompany/app/dialog/DialogEditUp;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogEditUp;->D0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUp$17;->a:Lcom/mycompany/app/dialog/DialogEditUp;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditUp;->C()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const/high16 v1, -0x1000000

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v1, -0x1

    .line 21
    :goto_0
    iget v2, v0, Lcom/mycompany/app/dialog/DialogEditUp;->u0:I

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x2

    .line 25
    if-eq v2, v4, :cond_2

    .line 26
    .line 27
    iput v4, v0, Lcom/mycompany/app/dialog/DialogEditUp;->u0:I

    .line 28
    .line 29
    invoke-virtual {v0, v4, v3}, Lcom/mycompany/app/dialog/DialogEditUp;->E(IZ)V

    .line 30
    .line 31
    .line 32
    :cond_2
    iget v2, v0, Lcom/mycompany/app/dialog/DialogEditUp;->v0:I

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    const/16 v5, 0x19

    .line 36
    .line 37
    if-eq v2, v5, :cond_3

    .line 38
    .line 39
    iput v5, v0, Lcom/mycompany/app/dialog/DialogEditUp;->v0:I

    .line 40
    .line 41
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditUp;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 42
    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    iget v6, v0, Lcom/mycompany/app/dialog/DialogEditUp;->v0:I

    .line 49
    .line 50
    const-string v7, "%"

    .line 51
    .line 52
    invoke-static {v5, v6, v7, v2}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 53
    .line 54
    .line 55
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditUp;->o0:Landroid/widget/SeekBar;

    .line 56
    .line 57
    iget v5, v0, Lcom/mycompany/app/dialog/DialogEditUp;->v0:I

    .line 58
    .line 59
    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 60
    .line 61
    .line 62
    move v2, v4

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    move v2, v3

    .line 65
    :goto_1
    iget v5, v0, Lcom/mycompany/app/dialog/DialogEditUp;->w0:I

    .line 66
    .line 67
    if-ne v5, v1, :cond_4

    .line 68
    .line 69
    move v4, v2

    .line 70
    goto :goto_2

    .line 71
    :cond_4
    iput v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->w0:I

    .line 72
    .line 73
    :goto_2
    if-eqz v4, :cond_5

    .line 74
    .line 75
    iget v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->w0:I

    .line 76
    .line 77
    iget v2, v0, Lcom/mycompany/app/dialog/DialogEditUp;->v0:I

    .line 78
    .line 79
    invoke-static {v1, v2}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    iput v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->x0:I

    .line 84
    .line 85
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditUp;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 86
    .line 87
    if-eqz v2, :cond_5

    .line 88
    .line 89
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 90
    .line 91
    .line 92
    :cond_5
    invoke-virtual {v0, v3}, Lcom/mycompany/app/dialog/DialogEditUp;->D(Z)V

    .line 93
    .line 94
    .line 95
    return-void
.end method
