.class Lcom/mycompany/app/setting/SettingHome$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingHome;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingHome;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingHome$21;->a:Lcom/mycompany/app/setting/SettingHome;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/setting/SettingHome;->E2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHome$21;->a:Lcom/mycompany/app/setting/SettingHome;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->z2:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingHome;->z2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome$21;->a:Lcom/mycompany/app/setting/SettingHome;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingHome;->a2:Lcom/mycompany/app/view/MyEditText;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    if-nez p2, :cond_1

    .line 10
    .line 11
    const-string p2, "https://"

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingHome;->a2:Lcom/mycompany/app/view/MyEditText;

    .line 17
    .line 18
    const/16 p2, 0x8

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 21
    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    const-string p2, "www."

    .line 25
    .line 26
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingHome;->a2:Lcom/mycompany/app/view/MyEditText;

    .line 30
    .line 31
    const/4 p2, 0x4

    .line 32
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 33
    .line 34
    .line 35
    return v1
.end method
