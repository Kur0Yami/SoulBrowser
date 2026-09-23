.class Lcom/mycompany/app/dialog/DialogEditIcon$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogEditIcon;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditIcon;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon$12;->a:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogEditIcon;->y0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon$12;->a:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditIcon;->C()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget v2, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->e0:I

    .line 14
    .line 15
    const/4 v3, 0x4

    .line 16
    const/4 v4, 0x0

    .line 17
    if-ne v2, v3, :cond_1

    .line 18
    .line 19
    sget-object v2, Lcom/mycompany/app/main/MainConst;->r:[I

    .line 20
    .line 21
    const/4 v3, 0x3

    .line 22
    aget v2, v2, v3

    .line 23
    .line 24
    sget-object v5, Lcom/mycompany/app/main/MainConst;->p:[F

    .line 25
    .line 26
    aget v3, v5, v3

    .line 27
    .line 28
    :goto_0
    move v5, v4

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v3, 0x5

    .line 31
    if-ne v2, v3, :cond_2

    .line 32
    .line 33
    sget-object v2, Lcom/mycompany/app/main/MainConst;->q:[I

    .line 34
    .line 35
    const/4 v3, 0x7

    .line 36
    aget v2, v2, v3

    .line 37
    .line 38
    sget-object v5, Lcom/mycompany/app/main/MainConst;->p:[F

    .line 39
    .line 40
    aget v3, v5, v3

    .line 41
    .line 42
    const/16 v5, 0x3c

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const/4 v5, 0x6

    .line 46
    if-ne v2, v5, :cond_3

    .line 47
    .line 48
    sget-object v2, Lcom/mycompany/app/main/MainConst;->q:[I

    .line 49
    .line 50
    aget v2, v2, v3

    .line 51
    .line 52
    sget-object v5, Lcom/mycompany/app/main/MainConst;->p:[F

    .line 53
    .line 54
    aget v3, v5, v3

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    sget-object v2, Lcom/mycompany/app/main/MainConst;->q:[I

    .line 58
    .line 59
    aget v2, v2, v3

    .line 60
    .line 61
    sget-object v5, Lcom/mycompany/app/main/MainConst;->p:[F

    .line 62
    .line 63
    aget v3, v5, v3

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :goto_1
    iget v6, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 67
    .line 68
    const/4 v7, 0x1

    .line 69
    if-eq v6, v5, :cond_4

    .line 70
    .line 71
    iput v5, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 72
    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    iget v6, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 79
    .line 80
    const-string v8, "%"

    .line 81
    .line 82
    invoke-static {v5, v6, v8, v1}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 83
    .line 84
    .line 85
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->l0:Landroid/widget/SeekBar;

    .line 86
    .line 87
    iget v5, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 88
    .line 89
    iget v6, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->a0:I

    .line 90
    .line 91
    sub-int/2addr v5, v6

    .line 92
    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 93
    .line 94
    .line 95
    move v1, v7

    .line 96
    goto :goto_2

    .line 97
    :cond_4
    move v1, v4

    .line 98
    :goto_2
    iget v5, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 99
    .line 100
    if-ne v5, v2, :cond_6

    .line 101
    .line 102
    iget v5, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 103
    .line 104
    cmpl-float v5, v5, v3

    .line 105
    .line 106
    if-eqz v5, :cond_5

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_5
    move v7, v1

    .line 110
    goto :goto_4

    .line 111
    :cond_6
    :goto_3
    iput v2, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 112
    .line 113
    iput v3, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 114
    .line 115
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->p0:Lcom/mycompany/app/view/MyPaletteView;

    .line 116
    .line 117
    if-eqz v1, :cond_7

    .line 118
    .line 119
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/view/MyPaletteView;->b(FI)V

    .line 120
    .line 121
    .line 122
    :cond_7
    :goto_4
    if-eqz v7, :cond_8

    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditIcon;->E()V

    .line 125
    .line 126
    .line 127
    :cond_8
    invoke-virtual {v0, v4}, Lcom/mycompany/app/dialog/DialogEditIcon;->D(Z)V

    .line 128
    .line 129
    .line 130
    return-void
.end method
