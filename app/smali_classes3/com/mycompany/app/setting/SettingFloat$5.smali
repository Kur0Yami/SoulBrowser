.class Lcom/mycompany/app/setting/SettingFloat$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mycompany/app/setting/SettingFloat;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingFloat;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingFloat$5;->b:Lcom/mycompany/app/setting/SettingFloat;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/setting/SettingFloat$5;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/setting/SettingFloat;->a2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFloat$5;->b:Lcom/mycompany/app/setting/SettingFloat;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFloat;->X1:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingFloat;->X1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 8

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    iget v1, p0, Lcom/mycompany/app/setting/SettingFloat$5;->a:I

    .line 4
    .line 5
    iget-object v3, p0, Lcom/mycompany/app/setting/SettingFloat$5;->b:Lcom/mycompany/app/setting/SettingFloat;

    .line 6
    .line 7
    if-nez p2, :cond_6

    .line 8
    .line 9
    sget p2, Lcom/mycompany/app/setting/SettingFloat;->a2:I

    .line 10
    .line 11
    iget-object p2, v3, Lcom/mycompany/app/setting/SettingFloat;->Y1:Lcom/mycompany/app/dialog/DialogSetItem;

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v2, v3, Lcom/mycompany/app/setting/SettingFloat;->Z1:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    :goto_0
    return v0

    .line 21
    :cond_1
    if-eqz p2, :cond_2

    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/mycompany/app/dialog/DialogSetItem;->dismiss()V

    .line 24
    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    iput-object p2, v3, Lcom/mycompany/app/setting/SettingFloat;->Y1:Lcom/mycompany/app/dialog/DialogSetItem;

    .line 28
    .line 29
    :cond_2
    if-ne v1, v0, :cond_4

    .line 30
    .line 31
    sget p1, Lcom/mycompany/app/pref/PrefFloat;->j:I

    .line 32
    .line 33
    :cond_3
    :goto_1
    move v4, p1

    .line 34
    goto :goto_2

    .line 35
    :cond_4
    const/4 p2, 0x5

    .line 36
    if-ne v1, p2, :cond_5

    .line 37
    .line 38
    sget p1, Lcom/mycompany/app/pref/PrefFloat;->k:I

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_5
    const/16 p2, 0x9

    .line 42
    .line 43
    if-ne v1, p2, :cond_3

    .line 44
    .line 45
    sget p1, Lcom/mycompany/app/pref/PrefFloat;->l:I

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :goto_2
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetItem;

    .line 49
    .line 50
    new-instance v7, Lcom/mycompany/app/setting/SettingFloat$6;

    .line 51
    .line 52
    invoke-direct {v7, v3, v1}, Lcom/mycompany/app/setting/SettingFloat$6;-><init>(Lcom/mycompany/app/setting/SettingFloat;I)V

    .line 53
    .line 54
    .line 55
    const/4 v5, 0x0

    .line 56
    const/4 v6, 0x0

    .line 57
    invoke-direct/range {v2 .. v7}, Lcom/mycompany/app/dialog/DialogSetItem;-><init>(Landroid/app/Activity;I[I[ILcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;)V

    .line 58
    .line 59
    .line 60
    iput-object v2, v3, Lcom/mycompany/app/setting/SettingFloat;->Y1:Lcom/mycompany/app/dialog/DialogSetItem;

    .line 61
    .line 62
    new-instance p1, Lcom/mycompany/app/setting/SettingFloat$7;

    .line 63
    .line 64
    invoke-direct {p1, v3}, Lcom/mycompany/app/setting/SettingFloat$7;-><init>(Lcom/mycompany/app/setting/SettingFloat;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 68
    .line 69
    .line 70
    return v0

    .line 71
    :cond_6
    invoke-static {v3, v1, p1}, Lcom/mycompany/app/setting/SettingFloat;->O0(Lcom/mycompany/app/setting/SettingFloat;II)V

    .line 72
    .line 73
    .line 74
    return v0
.end method
