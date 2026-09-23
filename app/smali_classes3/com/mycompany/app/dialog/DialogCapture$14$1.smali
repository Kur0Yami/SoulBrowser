.class Lcom/mycompany/app/dialog/DialogCapture$14$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogCapture$14;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogCapture$14;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCapture$14$1;->c:Lcom/mycompany/app/dialog/DialogCapture$14;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCapture$14$1;->c:Lcom/mycompany/app/dialog/DialogCapture$14;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogCapture$14;->c:Lcom/mycompany/app/dialog/DialogCapture;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCapture;->w:Lcom/mycompany/app/main/MainActivity;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCapture;->S:Lcom/mycompany/app/dialog/DialogDownEdit;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogCapture;->p()V

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCapture;->G:Lcom/mycompany/app/crop/CropImageView;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCapture;->V:Landroid/graphics/Bitmap;

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogCapture;->H:Lcom/mycompany/app/view/MySizeImage;

    .line 27
    .line 28
    if-eqz v3, :cond_3

    .line 29
    .line 30
    iget-wide v6, v0, Lcom/mycompany/app/dialog/DialogCapture;->W:J

    .line 31
    .line 32
    const/4 v8, 0x0

    .line 33
    const/4 v4, 0x0

    .line 34
    const/high16 v5, 0x3f000000    # 0.5f

    .line 35
    .line 36
    invoke-static/range {v3 .. v8}, Lcom/mycompany/app/main/MainUtil;->g4(Landroid/view/View;IFJLandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    goto :goto_1

    .line 41
    :cond_3
    move-object v1, v2

    .line 42
    :goto_1
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogCapture;->V:Landroid/graphics/Bitmap;

    .line 43
    .line 44
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogCapture;->M:Landroid/widget/LinearLayout;

    .line 45
    .line 46
    const/4 v3, 0x4

    .line 47
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogCapture;->U:Z

    .line 52
    .line 53
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogCapture;->w:Lcom/mycompany/app/main/MainActivity;

    .line 54
    .line 55
    sput-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 56
    .line 57
    new-instance v4, Lcom/mycompany/app/dialog/DialogDownEdit;

    .line 58
    .line 59
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogCapture;->E:Ljava/lang/String;

    .line 60
    .line 61
    new-instance v6, Lcom/mycompany/app/dialog/DialogCapture$15;

    .line 62
    .line 63
    invoke-direct {v6, v0}, Lcom/mycompany/app/dialog/DialogCapture$15;-><init>(Lcom/mycompany/app/dialog/DialogCapture;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {v4, v3, v5, v1, v6}, Lcom/mycompany/app/dialog/DialogDownEdit;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/mycompany/app/dialog/DialogDownPage$DownPageListener;)V

    .line 67
    .line 68
    .line 69
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogCapture;->S:Lcom/mycompany/app/dialog/DialogDownEdit;

    .line 70
    .line 71
    new-instance v1, Lcom/mycompany/app/dialog/DialogCapture$16;

    .line 72
    .line 73
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogCapture$16;-><init>(Lcom/mycompany/app/dialog/DialogCapture;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogCapture;->S:Lcom/mycompany/app/dialog/DialogDownEdit;

    .line 80
    .line 81
    const/4 v1, 0x0

    .line 82
    iput-boolean v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->j:Z

    .line 83
    .line 84
    iput-boolean v2, v0, Lcom/mycompany/app/view/MyDialogBottom;->k:Z

    .line 85
    .line 86
    return-void
.end method
