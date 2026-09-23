.class Lcom/mycompany/app/setting/SettingVideoTap$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mycompany/app/setting/SettingVideoTap;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingVideoTap;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingVideoTap$8;->b:Lcom/mycompany/app/setting/SettingVideoTap;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/setting/SettingVideoTap$8;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/setting/SettingVideoTap;->Z1:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVideoTap$8;->b:Lcom/mycompany/app/setting/SettingVideoTap;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoTap;->M1:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingVideoTap;->M1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingVideoTap$8;->b:Lcom/mycompany/app/setting/SettingVideoTap;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingVideoTap;->Q1:[I

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
    if-ltz p2, :cond_2

    .line 10
    .line 11
    const/4 v2, 0x4

    .line 12
    if-lt p2, v2, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget v2, p0, Lcom/mycompany/app/setting/SettingVideoTap$8;->a:I

    .line 16
    .line 17
    aput p2, v0, v2

    .line 18
    .line 19
    invoke-virtual {p1, v2, p2}, Lcom/mycompany/app/setting/SettingVideoTap;->I0(II)V

    .line 20
    .line 21
    .line 22
    :cond_2
    :goto_0
    return v1
.end method
