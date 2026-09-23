.class Lcom/mycompany/app/editor/EditorActivity$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/editor/core/PhotoEffectView$PhotoSaveListener;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Z

.field public final synthetic c:Lcom/mycompany/app/editor/EditorActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/editor/EditorActivity;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/editor/EditorActivity$28;->c:Lcom/mycompany/app/editor/EditorActivity;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/editor/EditorActivity$28;->a:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/mycompany/app/editor/EditorActivity$28;->b:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 7

    .line 1
    iget-object v1, p0, Lcom/mycompany/app/editor/EditorActivity$28;->c:Lcom/mycompany/app/editor/EditorActivity;

    .line 2
    .line 3
    iget-object v0, v1, Lcom/mycompany/app/editor/EditorActivity;->M1:Lcom/mycompany/app/view/MyCoverView;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/editor/EditorActivity$28;->a:Z

    .line 12
    .line 13
    const-string v3, "image/jpg"

    .line 14
    .line 15
    const-string v4, "image/png"

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    if-eqz v0, :cond_4

    .line 19
    .line 20
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    sget p1, Lnet/kaki87/soul2/testing/R$string;->image_fail:I

    .line 27
    .line 28
    invoke-static {v1, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object v0, v1, Lcom/mycompany/app/editor/EditorActivity;->g1:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v0, v5, v5, v2}, Lcom/mycompany/app/main/MainUtil;->V3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0, v2, v2}, Lcom/mycompany/app/compress/Compress;->C(Ljava/lang/String;ZZ)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-nez v6, :cond_3

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    move-object v3, v4

    .line 51
    :cond_2
    iget-object v0, v1, Lcom/mycompany/app/editor/EditorActivity;->g1:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v0, v5, v3, v2}, Lcom/mycompany/app/main/MainUtil;->V3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :cond_3
    iget-object v2, v1, Lcom/mycompany/app/editor/EditorActivity;->f1:Landroid/content/Context;

    .line 58
    .line 59
    invoke-static {v2, v0}, Lcom/mycompany/app/main/MainUtil;->k0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    new-instance v0, Lcom/mycompany/app/editor/EditorActivity$SaveTask;

    .line 64
    .line 65
    const/4 v4, 0x1

    .line 66
    iget-boolean v5, p0, Lcom/mycompany/app/editor/EditorActivity$28;->b:Z

    .line 67
    .line 68
    move-object v3, p1

    .line 69
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/editor/EditorActivity$SaveTask;-><init>(Lcom/mycompany/app/editor/EditorActivity;Ljava/lang/String;Landroid/graphics/Bitmap;ZZ)V

    .line 70
    .line 71
    .line 72
    iget-object p1, v1, Lcom/mycompany/app/editor/EditorActivity;->f1:Landroid/content/Context;

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_4
    invoke-virtual {v1}, Lcom/mycompany/app/editor/EditorActivity;->z0()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    return-void

    .line 85
    :cond_5
    invoke-virtual {v1}, Lcom/mycompany/app/editor/EditorActivity;->w0()V

    .line 86
    .line 87
    .line 88
    iput-boolean v2, v1, Lcom/mycompany/app/editor/EditorActivity;->Y1:Z

    .line 89
    .line 90
    sput-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 91
    .line 92
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_6

    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_6

    .line 103
    .line 104
    move-object v3, v4

    .line 105
    :cond_6
    iget-object v0, v1, Lcom/mycompany/app/editor/EditorActivity;->g1:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {v0, v5, v3, v2}, Lcom/mycompany/app/main/MainUtil;->V3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->k1(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownEdit;

    .line 116
    .line 117
    new-instance v3, Lcom/mycompany/app/editor/EditorActivity$41;

    .line 118
    .line 119
    iget-boolean v4, p0, Lcom/mycompany/app/editor/EditorActivity$28;->b:Z

    .line 120
    .line 121
    invoke-direct {v3, v1, v4}, Lcom/mycompany/app/editor/EditorActivity$41;-><init>(Lcom/mycompany/app/editor/EditorActivity;Z)V

    .line 122
    .line 123
    .line 124
    invoke-direct {v2, v1, v0, p1, v3}, Lcom/mycompany/app/dialog/DialogDownEdit;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/mycompany/app/dialog/DialogDownPage$DownPageListener;)V

    .line 125
    .line 126
    .line 127
    iput-object v2, v1, Lcom/mycompany/app/editor/EditorActivity;->X1:Lcom/mycompany/app/dialog/DialogDownEdit;

    .line 128
    .line 129
    new-instance p1, Lcom/mycompany/app/editor/EditorActivity$42;

    .line 130
    .line 131
    invoke-direct {p1, v1}, Lcom/mycompany/app/editor/EditorActivity$42;-><init>(Lcom/mycompany/app/editor/EditorActivity;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method public final w()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/editor/EditorActivity$28;->c:Lcom/mycompany/app/editor/EditorActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/editor/EditorActivity;->M1:Lcom/mycompany/app/view/MyCoverView;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    sget v1, Lnet/kaki87/soul2/testing/R$string;->image_fail:I

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
