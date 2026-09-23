.class Lcom/mycompany/app/dialog/DialogEditScript$20$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditScript$20;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditScript$20;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditScript$20$1;->c:Lcom/mycompany/app/dialog/DialogEditScript$20;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript$20$1;->c:Lcom/mycompany/app/dialog/DialogEditScript$20;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogEditScript$20;->c:Lcom/mycompany/app/dialog/DialogEditScript;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditScript;->q0:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogEditScript;->q0:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditScript;->M:Lcom/mycompany/app/view/MyButtonImage;

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v3, 0x1

    .line 16
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setEnabled(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditScript;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setEnabled(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditScript;->V:Lcom/mycompany/app/view/MyCoverView;

    .line 25
    .line 26
    const/16 v3, 0x8

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogEditScript;->r0:Z

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditScript;->H:Landroid/content/Context;

    .line 36
    .line 37
    sget v2, Lnet/kaki87/soul2/testing/R$string;->exist_name:I

    .line 38
    .line 39
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-wide v2, v0, Lcom/mycompany/app/dialog/DialogEditScript;->s0:J

    .line 44
    .line 45
    const-wide/16 v4, 0x0

    .line 46
    .line 47
    cmp-long v2, v2, v4

    .line 48
    .line 49
    if-lez v2, :cond_2

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditScript;->dismiss()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v2, "Error\n"

    .line 64
    .line 65
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditScript;->H:Landroid/content/Context;

    .line 69
    .line 70
    sget v3, Lnet/kaki87/soul2/testing/R$string;->check_format:I

    .line 71
    .line 72
    invoke-static {v3, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->v(ILandroid/content/Context;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    :cond_3
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditScript;->H:Landroid/content/Context;

    .line 77
    .line 78
    invoke-static {v2, v1}, Lcom/mycompany/app/main/MainUtil;->f8(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    const/4 v1, 0x0

    .line 82
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogEditScript;->i0:Z

    .line 83
    .line 84
    return-void
.end method
