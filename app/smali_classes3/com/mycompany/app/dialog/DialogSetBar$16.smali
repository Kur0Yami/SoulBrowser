.class Lcom/mycompany/app/dialog/DialogSetBar$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetBar;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetBar$16;->a:Lcom/mycompany/app/dialog/DialogSetBar;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogSetBar;->K0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetBar$16;->a:Lcom/mycompany/app/dialog/DialogSetBar;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetBar;->D()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetBar;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget v1, v0, Lcom/mycompany/app/dialog/DialogSetBar;->f0:I

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    const-string v3, "%"

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    if-ne v1, v2, :cond_3

    .line 20
    .line 21
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetBar;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    :goto_0
    return-void

    .line 26
    :cond_1
    iget v2, v0, Lcom/mycompany/app/dialog/DialogSetBar;->z0:I

    .line 27
    .line 28
    if-eqz v2, :cond_3

    .line 29
    .line 30
    iput v4, v0, Lcom/mycompany/app/dialog/DialogSetBar;->z0:I

    .line 31
    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    iget v5, v0, Lcom/mycompany/app/dialog/DialogSetBar;->z0:I

    .line 38
    .line 39
    invoke-static {v2, v5, v3, v1}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetBar;->o0:Landroid/widget/SeekBar;

    .line 43
    .line 44
    iget v2, v0, Lcom/mycompany/app/dialog/DialogSetBar;->z0:I

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 47
    .line 48
    .line 49
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetBar;->k0:Lcom/mycompany/app/view/MyBarView;

    .line 50
    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 54
    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    const/high16 v2, -0x1000000

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const/4 v2, -0x1

    .line 61
    :goto_1
    iget v5, v0, Lcom/mycompany/app/dialog/DialogSetBar;->z0:I

    .line 62
    .line 63
    invoke-static {v2, v5}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 68
    .line 69
    .line 70
    :cond_3
    iget v1, v0, Lcom/mycompany/app/dialog/DialogSetBar;->A0:I

    .line 71
    .line 72
    const/16 v2, 0x64

    .line 73
    .line 74
    if-eq v1, v2, :cond_4

    .line 75
    .line 76
    iput v2, v0, Lcom/mycompany/app/dialog/DialogSetBar;->A0:I

    .line 77
    .line 78
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetBar;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 79
    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    iget v5, v0, Lcom/mycompany/app/dialog/DialogSetBar;->A0:I

    .line 86
    .line 87
    invoke-static {v2, v5, v3, v1}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 88
    .line 89
    .line 90
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetBar;->t0:Landroid/widget/SeekBar;

    .line 91
    .line 92
    iget v2, v0, Lcom/mycompany/app/dialog/DialogSetBar;->A0:I

    .line 93
    .line 94
    iget v3, v0, Lcom/mycompany/app/dialog/DialogSetBar;->b0:I

    .line 95
    .line 96
    sub-int/2addr v2, v3

    .line 97
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 98
    .line 99
    .line 100
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetBar;->l0:Landroid/widget/FrameLayout$LayoutParams;

    .line 101
    .line 102
    if-eqz v1, :cond_4

    .line 103
    .line 104
    iget v2, v0, Lcom/mycompany/app/dialog/DialogSetBar;->A0:I

    .line 105
    .line 106
    sget v3, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 107
    .line 108
    mul-int/2addr v2, v3

    .line 109
    int-to-float v2, v2

    .line 110
    const/high16 v3, 0x42c80000    # 100.0f

    .line 111
    .line 112
    div-float/2addr v2, v3

    .line 113
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 118
    .line 119
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetBar;->k0:Lcom/mycompany/app/view/MyBarView;

    .line 120
    .line 121
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 122
    .line 123
    .line 124
    :cond_4
    invoke-virtual {v0, v4}, Lcom/mycompany/app/dialog/DialogSetBar;->E(Z)V

    .line 125
    .line 126
    .line 127
    return-void
.end method
