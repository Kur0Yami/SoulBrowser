.class Lcom/mycompany/app/setting/SettingGesture$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mycompany/app/setting/SettingGesture;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingGesture;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingGesture$5;->b:Lcom/mycompany/app/setting/SettingGesture;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/setting/SettingGesture$5;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/setting/SettingGesture;->Z1:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingGesture$5;->b:Lcom/mycompany/app/setting/SettingGesture;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingGesture;->X1:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingGesture;->X1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 7

    .line 1
    const/4 p1, 0x0

    .line 2
    iget v0, p0, Lcom/mycompany/app/setting/SettingGesture$5;->a:I

    .line 3
    .line 4
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingGesture$5;->b:Lcom/mycompany/app/setting/SettingGesture;

    .line 5
    .line 6
    if-nez p2, :cond_6

    .line 7
    .line 8
    iget-object p2, v2, Lcom/mycompany/app/setting/SettingGesture;->Y1:Lcom/mycompany/app/dialog/DialogSetItem;

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    if-eqz p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/mycompany/app/dialog/DialogSetItem;->dismiss()V

    .line 16
    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    iput-object p2, v2, Lcom/mycompany/app/setting/SettingGesture;->Y1:Lcom/mycompany/app/dialog/DialogSetItem;

    .line 20
    .line 21
    :cond_1
    const/4 p2, 0x4

    .line 22
    if-ne v0, p2, :cond_3

    .line 23
    .line 24
    sget p1, Lcom/mycompany/app/pref/PrefZone;->X:I

    .line 25
    .line 26
    :cond_2
    :goto_0
    move v3, p1

    .line 27
    goto :goto_1

    .line 28
    :cond_3
    const/4 p2, 0x5

    .line 29
    if-ne v0, p2, :cond_4

    .line 30
    .line 31
    sget p1, Lcom/mycompany/app/pref/PrefZone;->Y:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_4
    const/4 p2, 0x6

    .line 35
    if-ne v0, p2, :cond_5

    .line 36
    .line 37
    sget p1, Lcom/mycompany/app/pref/PrefZone;->Z:I

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_5
    const/4 p2, 0x7

    .line 41
    if-ne v0, p2, :cond_2

    .line 42
    .line 43
    sget p1, Lcom/mycompany/app/pref/PrefZone;->a0:I

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :goto_1
    new-instance v1, Lcom/mycompany/app/dialog/DialogSetItem;

    .line 47
    .line 48
    new-instance v6, Lcom/mycompany/app/setting/SettingGesture$6;

    .line 49
    .line 50
    invoke-direct {v6, v2, v0}, Lcom/mycompany/app/setting/SettingGesture$6;-><init>(Lcom/mycompany/app/setting/SettingGesture;I)V

    .line 51
    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    const/4 v5, 0x0

    .line 55
    invoke-direct/range {v1 .. v6}, Lcom/mycompany/app/dialog/DialogSetItem;-><init>(Landroid/app/Activity;I[I[ILcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;)V

    .line 56
    .line 57
    .line 58
    iput-object v1, v2, Lcom/mycompany/app/setting/SettingGesture;->Y1:Lcom/mycompany/app/dialog/DialogSetItem;

    .line 59
    .line 60
    new-instance p1, Lcom/mycompany/app/setting/SettingGesture$7;

    .line 61
    .line 62
    invoke-direct {p1, v2}, Lcom/mycompany/app/setting/SettingGesture$7;-><init>(Lcom/mycompany/app/setting/SettingGesture;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_6
    invoke-static {v2, v0, p1}, Lcom/mycompany/app/setting/SettingGesture;->O0(Lcom/mycompany/app/setting/SettingGesture;II)V

    .line 70
    .line 71
    .line 72
    :goto_2
    const/4 p1, 0x1

    .line 73
    return p1
.end method
