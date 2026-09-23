.class Lcom/mycompany/app/setting/SettingTts$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingTts;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingTts;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingTts$3;->c:Lcom/mycompany/app/setting/SettingTts;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    sget p1, Lcom/mycompany/app/setting/SettingTts;->c2:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingTts$3;->c:Lcom/mycompany/app/setting/SettingTts;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingTts;->Y1:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingTts;->Z1:Lcom/mycompany/app/dialog/DialogSetTts;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingTts;->a2:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    :goto_0
    return-void

    .line 20
    :cond_2
    invoke-virtual {p1}, Lcom/mycompany/app/setting/SettingTts;->P0()V

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
    sget v1, Lnet/kaki87/soul2/testing/R$string;->tts_guide_1:I

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
    sget v1, Lnet/kaki87/soul2/testing/R$string;->tts_guide_2:I

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
    new-instance v1, Lcom/mycompany/app/dialog/DialogConfirm;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v2, Lcom/mycompany/app/setting/SettingTts$6;

    .line 58
    .line 59
    invoke-direct {v2, p1}, Lcom/mycompany/app/setting/SettingTts$6;-><init>(Lcom/mycompany/app/setting/SettingTts;)V

    .line 60
    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    invoke-direct {v1, p1, v0, v3, v2}, Lcom/mycompany/app/dialog/DialogConfirm;-><init>(Landroid/app/Activity;Ljava/lang/String;ZLcom/mycompany/app/dialog/DialogConfirm$DialogConfListener;)V

    .line 64
    .line 65
    .line 66
    iput-object v1, p1, Lcom/mycompany/app/setting/SettingTts;->Y1:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 67
    .line 68
    new-instance v0, Lcom/mycompany/app/setting/SettingTts$7;

    .line 69
    .line 70
    invoke-direct {v0, p1}, Lcom/mycompany/app/setting/SettingTts$7;-><init>(Lcom/mycompany/app/setting/SettingTts;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method
