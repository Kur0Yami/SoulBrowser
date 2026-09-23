.class Lcom/mycompany/app/setting/SettingDown$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingDown;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingDown;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingDown$3;->c:Lcom/mycompany/app/setting/SettingDown;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    sget p1, Lcom/mycompany/app/setting/SettingDown;->j2:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingDown$3;->c:Lcom/mycompany/app/setting/SettingDown;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingDown;->g2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingDown;->h2:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingDown;->i2:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    :goto_0
    return-void

    .line 20
    :cond_2
    invoke-virtual {p1}, Lcom/mycompany/app/setting/SettingDown;->Q0()V

    .line 21
    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    sget v1, Lnet/kaki87/soul2/testing/R$string;->size_guide_1:I

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, "\n"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    sget v1, Lnet/kaki87/soul2/testing/R$string;->size_guide_2:I

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, "\n\n"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    sget v1, Lnet/kaki87/soul2/testing/R$string;->size_guide_3:I

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    new-instance v1, Lcom/mycompany/app/dialog/DialogConfirm;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    new-instance v2, Lcom/mycompany/app/setting/SettingDown$15;

    .line 72
    .line 73
    invoke-direct {v2, p1}, Lcom/mycompany/app/setting/SettingDown$15;-><init>(Lcom/mycompany/app/setting/SettingDown;)V

    .line 74
    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    invoke-direct {v1, p1, v0, v3, v2}, Lcom/mycompany/app/dialog/DialogConfirm;-><init>(Landroid/app/Activity;Ljava/lang/String;ZLcom/mycompany/app/dialog/DialogConfirm$DialogConfListener;)V

    .line 78
    .line 79
    .line 80
    iput-object v1, p1, Lcom/mycompany/app/setting/SettingDown;->i2:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 81
    .line 82
    new-instance v0, Lcom/mycompany/app/setting/SettingDown$16;

    .line 83
    .line 84
    invoke-direct {v0, p1}, Lcom/mycompany/app/setting/SettingDown$16;-><init>(Lcom/mycompany/app/setting/SettingDown;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method
