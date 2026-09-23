.class Lcom/mycompany/app/setting/SettingSense$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingSense;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingSense;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingSense$5;->c:Lcom/mycompany/app/setting/SettingSense;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSense$5;->c:Lcom/mycompany/app/setting/SettingSense;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSense;->I1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    if-nez p1, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    check-cast p1, Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-ltz p1, :cond_a

    .line 25
    .line 26
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSense;->I1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 27
    .line 28
    array-length v1, v1

    .line 29
    if-lt p1, v1, :cond_3

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSense;->K1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 33
    .line 34
    if-eqz v1, :cond_4

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSense;->L1:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 38
    .line 39
    if-eqz v1, :cond_5

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_5
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingSense;->M1:Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 43
    .line 44
    if-eqz v2, :cond_6

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_6
    if-eqz v1, :cond_7

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogSeekSimple;->dismiss()V

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingSense;->L1:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 54
    .line 55
    :cond_7
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSense;->O1:[I

    .line 56
    .line 57
    if-nez v1, :cond_8

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_8
    aget v1, v1, p1

    .line 61
    .line 62
    sget-boolean v2, Lcom/mycompany/app/pref/PrefRead;->z:Z

    .line 63
    .line 64
    const/4 v3, 0x0

    .line 65
    if-eqz v2, :cond_9

    .line 66
    .line 67
    sput-boolean v3, Lcom/mycompany/app/pref/PrefRead;->z:Z

    .line 68
    .line 69
    iget-object v2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 70
    .line 71
    const/16 v4, 0x8

    .line 72
    .line 73
    const-string v5, "mGuideSense"

    .line 74
    .line 75
    invoke-static {v4, v2, v5, v3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 76
    .line 77
    .line 78
    :cond_9
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingSense;->J1:[Lcom/mycompany/app/view/MyLineText;

    .line 79
    .line 80
    aget-object v2, v2, p1

    .line 81
    .line 82
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyLineText;->setNotiTop(Z)V

    .line 83
    .line 84
    .line 85
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 86
    .line 87
    new-instance v4, Lcom/mycompany/app/setting/SettingSense$8;

    .line 88
    .line 89
    invoke-direct {v4, v0, v1, p1}, Lcom/mycompany/app/setting/SettingSense$8;-><init>(Lcom/mycompany/app/setting/SettingSense;II)V

    .line 90
    .line 91
    .line 92
    invoke-direct {v2, v0, v3, v1, v4}, Lcom/mycompany/app/dialog/DialogSeekSimple;-><init>(Landroid/app/Activity;IILcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;)V

    .line 93
    .line 94
    .line 95
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingSense;->L1:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 96
    .line 97
    new-instance p1, Lcom/mycompany/app/setting/SettingSense$9;

    .line 98
    .line 99
    invoke-direct {p1, v0}, Lcom/mycompany/app/setting/SettingSense$9;-><init>(Lcom/mycompany/app/setting/SettingSense;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 103
    .line 104
    .line 105
    :cond_a
    :goto_0
    return-void
.end method
