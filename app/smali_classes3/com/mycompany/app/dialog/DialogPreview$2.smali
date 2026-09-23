.class Lcom/mycompany/app/dialog/DialogPreview$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogPreview;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPreview;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPreview$2;->c:Lcom/mycompany/app/dialog/DialogPreview;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview$2;->c:Lcom/mycompany/app/dialog/DialogPreview;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreview;->g0:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogPreview;->g0:Landroid/graphics/Bitmap;

    .line 7
    .line 8
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPreview;->k0:Landroid/widget/FrameLayout;

    .line 9
    .line 10
    if-eqz v2, :cond_3

    .line 11
    .line 12
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPreview;->b0:Landroid/content/Context;

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPreview;->l0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 19
    .line 20
    const/high16 v3, -0x1000000

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 23
    .line 24
    .line 25
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPreview;->l0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 26
    .line 27
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 28
    .line 29
    int-to-float v3, v3

    .line 30
    const/high16 v4, 0x41000000    # 8.0f

    .line 31
    .line 32
    div-float/2addr v3, v4

    .line 33
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const v4, -0x4f4f50

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v4, v3}, Lcom/mycompany/app/view/MyDialogRelative;->d(II)V

    .line 41
    .line 42
    .line 43
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPreview;->k0:Landroid/widget/FrameLayout;

    .line 44
    .line 45
    new-instance v3, Lcom/mycompany/app/dialog/DialogPreview$3;

    .line 46
    .line 47
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogPreview$3;-><init>(Lcom/mycompany/app/dialog/DialogPreview;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    .line 52
    .line 53
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPreview;->l0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 54
    .line 55
    new-instance v3, Lcom/mycompany/app/dialog/DialogPreview$4;

    .line 56
    .line 57
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPreview;->r0:Landroid/widget/ImageView;

    .line 64
    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPreview;->r0:Landroid/widget/ImageView;

    .line 74
    .line 75
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogPreview;->I()V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreview;->y0:Lcom/mycompany/app/view/MyButtonImage;

    .line 83
    .line 84
    if-eqz v1, :cond_2

    .line 85
    .line 86
    new-instance v2, Lcom/mycompany/app/dialog/DialogPreview$5;

    .line 87
    .line 88
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPreview$5;-><init>(Lcom/mycompany/app/dialog/DialogPreview;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    .line 93
    .line 94
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreview;->z0:Lcom/mycompany/app/view/MyButtonImage;

    .line 95
    .line 96
    new-instance v2, Lcom/mycompany/app/dialog/DialogPreview$6;

    .line 97
    .line 98
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPreview$6;-><init>(Lcom/mycompany/app/dialog/DialogPreview;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    .line 103
    .line 104
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreview;->A0:Lcom/mycompany/app/view/MyButtonImage;

    .line 105
    .line 106
    new-instance v2, Lcom/mycompany/app/dialog/DialogPreview$7;

    .line 107
    .line 108
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPreview$7;-><init>(Lcom/mycompany/app/dialog/DialogPreview;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    .line 113
    .line 114
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreview;->B0:Lcom/mycompany/app/view/MyButtonImage;

    .line 115
    .line 116
    new-instance v2, Lcom/mycompany/app/dialog/DialogPreview$8;

    .line 117
    .line 118
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPreview$8;-><init>(Lcom/mycompany/app/dialog/DialogPreview;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    .line 123
    .line 124
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreview;->C0:Lcom/mycompany/app/view/MyButtonImage;

    .line 125
    .line 126
    new-instance v2, Lcom/mycompany/app/dialog/DialogPreview$9;

    .line 127
    .line 128
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPreview$9;-><init>(Lcom/mycompany/app/dialog/DialogPreview;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    .line 133
    .line 134
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->p()Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogPreview;->D(Z)V

    .line 139
    .line 140
    .line 141
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreview;->k0:Landroid/widget/FrameLayout;

    .line 142
    .line 143
    new-instance v2, Lcom/mycompany/app/dialog/DialogPreview$10;

    .line 144
    .line 145
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPreview$10;-><init>(Lcom/mycompany/app/dialog/DialogPreview;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->f(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 149
    .line 150
    .line 151
    :cond_3
    :goto_1
    return-void
.end method
