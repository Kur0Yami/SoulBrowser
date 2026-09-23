.class Lcom/mycompany/app/dialog/DialogCreateAlbum$23$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogCreateAlbum$23;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogCreateAlbum$23;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCreateAlbum$23$1;->c:Lcom/mycompany/app/dialog/DialogCreateAlbum$23;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCreateAlbum$23$1;->c:Lcom/mycompany/app/dialog/DialogCreateAlbum$23;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum$23;->a:Lcom/mycompany/app/dialog/DialogCreateAlbum;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->i1:Lcom/mycompany/app/dialog/DialogCreateAlbum$ZipTask;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->O0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    iget v2, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->m1:I

    .line 16
    .line 17
    iget v3, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->l1:I

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
    iget v2, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->m1:I

    .line 29
    .line 30
    int-to-float v2, v2

    .line 31
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyProgressBar;->setProgress(F)V

    .line 32
    .line 33
    .line 34
    iget v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->n1:I

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
    const-string v3, ""

    .line 43
    .line 44
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget v3, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->n1:I

    .line 48
    .line 49
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->B(Ljava/lang/StringBuilder;ILandroidx/appcompat/widget/AppCompatTextView;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->R0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 53
    .line 54
    const v1, -0xbbcca

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->R0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 62
    .line 63
    const-string v2, "0"

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->R0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 69
    .line 70
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 71
    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    const v1, -0x50506

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    const/high16 v1, -0x1000000

    .line 79
    .line 80
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    .line 82
    .line 83
    return-void
.end method
