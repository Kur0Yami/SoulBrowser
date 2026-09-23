.class Lcom/mycompany/app/setting/SettingGeneral$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingGeneral;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingGeneral;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingGeneral$5;->a:Lcom/mycompany/app/setting/SettingGeneral;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/setting/SettingGeneral;->c2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingGeneral$5;->a:Lcom/mycompany/app/setting/SettingGeneral;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingGeneral;->X1:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingGeneral;->X1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingGeneral$5;->a:Lcom/mycompany/app/setting/SettingGeneral;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

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
    iget-boolean v0, p1, Lcom/mycompany/app/setting/SettingGeneral;->b2:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    :goto_0
    return v1

    .line 14
    :cond_1
    iput-boolean v1, p1, Lcom/mycompany/app/setting/SettingGeneral;->b2:Z

    .line 15
    .line 16
    iget v0, p1, Lcom/mycompany/app/setting/SettingGeneral;->a2:I

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/mycompany/app/setting/SettingGeneral;->S0()[[Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    array-length v2, v2

    .line 21
    rem-int/2addr p2, v2

    .line 22
    iput p2, p1, Lcom/mycompany/app/setting/SettingGeneral;->a2:I

    .line 23
    .line 24
    if-ne p2, v0, :cond_2

    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    iput-boolean p2, p1, Lcom/mycompany/app/setting/SettingGeneral;->b2:Z

    .line 28
    .line 29
    return v1

    .line 30
    :cond_2
    invoke-static {p1}, Lcom/mycompany/app/setting/SettingGeneral;->O0(Lcom/mycompany/app/setting/SettingGeneral;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 34
    .line 35
    new-instance p2, Lcom/mycompany/app/setting/SettingGeneral$5$1;

    .line 36
    .line 37
    invoke-direct {p2, p0}, Lcom/mycompany/app/setting/SettingGeneral$5$1;-><init>(Lcom/mycompany/app/setting/SettingGeneral$5;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    return v1
.end method
