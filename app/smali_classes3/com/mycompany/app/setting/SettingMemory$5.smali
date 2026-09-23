.class Lcom/mycompany/app/setting/SettingMemory$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingMemory;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingMemory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingMemory$5;->a:Lcom/mycompany/app/setting/SettingMemory;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/setting/SettingMemory;->d2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMemory$5;->a:Lcom/mycompany/app/setting/SettingMemory;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMemory;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingMemory;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingMemory$5;->a:Lcom/mycompany/app/setting/SettingMemory;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    if-eqz p2, :cond_9

    .line 10
    .line 11
    sget p2, Lcom/mycompany/app/setting/SettingMemory;->d2:I

    .line 12
    .line 13
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingMemory;->a2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingMemory;->b2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    :goto_0
    return v1

    .line 23
    :cond_2
    if-eqz p2, :cond_3

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/mycompany/app/dialog/DialogSeekSimple;->dismiss()V

    .line 26
    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    iput-object p2, p1, Lcom/mycompany/app/setting/SettingMemory;->a2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 30
    .line 31
    :cond_3
    iget p2, p1, Lcom/mycompany/app/setting/SettingMemory;->c2:I

    .line 32
    .line 33
    const/4 v0, 0x5

    .line 34
    const/4 v2, 0x3

    .line 35
    if-ne p2, v2, :cond_5

    .line 36
    .line 37
    sget p2, Lcom/mycompany/app/pref/PrefZtwo;->H:I

    .line 38
    .line 39
    const/16 v3, 0x9

    .line 40
    .line 41
    if-ge p2, v2, :cond_4

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_4
    move v0, p2

    .line 45
    goto :goto_1

    .line 46
    :cond_5
    const/4 v3, 0x6

    .line 47
    if-ne p2, v3, :cond_6

    .line 48
    .line 49
    sget p2, Lcom/mycompany/app/pref/PrefZtwo;->F:I

    .line 50
    .line 51
    const/16 v3, 0xa

    .line 52
    .line 53
    if-ge p2, v2, :cond_4

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_6
    const/4 v3, 0x7

    .line 57
    if-ne p2, v3, :cond_7

    .line 58
    .line 59
    sget p2, Lcom/mycompany/app/pref/PrefZtwo;->G:I

    .line 60
    .line 61
    const/16 v3, 0xb

    .line 62
    .line 63
    if-ge p2, v2, :cond_4

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_7
    sget v0, Lcom/mycompany/app/pref/PrefZtwo;->I:I

    .line 67
    .line 68
    const/16 v3, 0xc

    .line 69
    .line 70
    if-ge v0, v1, :cond_8

    .line 71
    .line 72
    const/4 v0, 0x2

    .line 73
    :cond_8
    :goto_1
    new-instance p2, Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 74
    .line 75
    new-instance v2, Lcom/mycompany/app/setting/SettingMemory$6;

    .line 76
    .line 77
    invoke-direct {v2, p1}, Lcom/mycompany/app/setting/SettingMemory$6;-><init>(Lcom/mycompany/app/setting/SettingMemory;)V

    .line 78
    .line 79
    .line 80
    invoke-direct {p2, p1, v3, v0, v2}, Lcom/mycompany/app/dialog/DialogSeekSimple;-><init>(Landroid/app/Activity;IILcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;)V

    .line 81
    .line 82
    .line 83
    iput-object p2, p1, Lcom/mycompany/app/setting/SettingMemory;->a2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 84
    .line 85
    new-instance v0, Lcom/mycompany/app/setting/SettingMemory$7;

    .line 86
    .line 87
    invoke-direct {v0, p1}, Lcom/mycompany/app/setting/SettingMemory$7;-><init>(Lcom/mycompany/app/setting/SettingMemory;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, v0}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 91
    .line 92
    .line 93
    return v1

    .line 94
    :cond_9
    invoke-static {p1, p2}, Lcom/mycompany/app/setting/SettingMemory;->O0(Lcom/mycompany/app/setting/SettingMemory;I)V

    .line 95
    .line 96
    .line 97
    return v1
.end method
