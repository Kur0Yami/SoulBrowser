.class Lcom/mycompany/app/dialog/DialogCreateAlbum$20$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogCreateAlbum$20;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogCreateAlbum$20;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCreateAlbum$20$1;->c:Lcom/mycompany/app/dialog/DialogCreateAlbum$20;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCreateAlbum$20$1;->c:Lcom/mycompany/app/dialog/DialogCreateAlbum$20;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum$20;->a:Lcom/mycompany/app/dialog/DialogCreateAlbum;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->c1:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->O0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    iget v2, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->f1:I

    .line 16
    .line 17
    iget v3, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->e1:I

    .line 18
    .line 19
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->h3(II)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->P0:Lcom/mycompany/app/view/MyProgressBar;

    .line 27
    .line 28
    iget v2, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->f1:I

    .line 29
    .line 30
    int-to-float v2, v2

    .line 31
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyProgressBar;->setProgress(F)V

    .line 32
    .line 33
    .line 34
    iget v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->g1:I

    .line 35
    .line 36
    if-lez v1, :cond_2

    .line 37
    .line 38
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->R0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->b0:Landroid/content/Context;

    .line 46
    .line 47
    sget v4, Lnet/kaki87/soul2/testing/R$string;->not_loaded:I

    .line 48
    .line 49
    const-string v5, "    "

    .line 50
    .line 51
    invoke-static {v3, v4, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget v3, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->g1:I

    .line 55
    .line 56
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->B(Ljava/lang/StringBuilder;ILandroidx/appcompat/widget/AppCompatTextView;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->R0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 60
    .line 61
    const v2, -0xbbcca

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->R0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 69
    .line 70
    const-string v2, "0"

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->R0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 76
    .line 77
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 78
    .line 79
    if-eqz v2, :cond_3

    .line 80
    .line 81
    const v2, -0x50506

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    const/high16 v2, -0x1000000

    .line 86
    .line 87
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    .line 89
    .line 90
    :goto_1
    const/4 v1, 0x0

    .line 91
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->B1:Z

    .line 92
    .line 93
    return-void
.end method
