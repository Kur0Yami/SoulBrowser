.class Lcom/mycompany/app/setting/SettingTab$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mycompany/app/setting/SettingTab;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingTab;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingTab$7;->b:Lcom/mycompany/app/setting/SettingTab;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/setting/SettingTab$7;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/setting/SettingTab;->g2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTab$7;->b:Lcom/mycompany/app/setting/SettingTab;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingTab;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingTab;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 6

    .line 1
    iget p1, p0, Lcom/mycompany/app/setting/SettingTab$7;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingTab$7;->b:Lcom/mycompany/app/setting/SettingTab;

    .line 4
    .line 5
    if-nez p2, :cond_3

    .line 6
    .line 7
    sget p2, Lcom/mycompany/app/setting/SettingTab;->g2:I

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingTab;->S0()Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingTab;->e2:Lcom/mycompany/app/dialog/DialogSetItem;

    .line 17
    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/mycompany/app/dialog/DialogSetItem;->dismiss()V

    .line 21
    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    iput-object p2, v1, Lcom/mycompany/app/setting/SettingTab;->e2:Lcom/mycompany/app/dialog/DialogSetItem;

    .line 25
    .line 26
    :cond_1
    const/4 p2, 0x6

    .line 27
    if-ne p1, p2, :cond_2

    .line 28
    .line 29
    sget p2, Lcom/mycompany/app/pref/PrefWeb;->C:I

    .line 30
    .line 31
    :goto_0
    move v2, p2

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    sget p2, Lcom/mycompany/app/pref/PrefWeb;->D:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :goto_1
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetItem;

    .line 37
    .line 38
    new-instance v5, Lcom/mycompany/app/setting/SettingTab$14;

    .line 39
    .line 40
    invoke-direct {v5, v1, p1}, Lcom/mycompany/app/setting/SettingTab$14;-><init>(Lcom/mycompany/app/setting/SettingTab;I)V

    .line 41
    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/dialog/DialogSetItem;-><init>(Landroid/app/Activity;I[I[ILcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingTab;->e2:Lcom/mycompany/app/dialog/DialogSetItem;

    .line 49
    .line 50
    new-instance p1, Lcom/mycompany/app/setting/SettingTab$15;

    .line 51
    .line 52
    invoke-direct {p1, v1}, Lcom/mycompany/app/setting/SettingTab$15;-><init>(Lcom/mycompany/app/setting/SettingTab;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    const/4 p2, 0x0

    .line 60
    invoke-static {v1, p1, p2}, Lcom/mycompany/app/setting/SettingTab;->O0(Lcom/mycompany/app/setting/SettingTab;II)V

    .line 61
    .line 62
    .line 63
    :goto_2
    const/4 p1, 0x1

    .line 64
    return p1
.end method
