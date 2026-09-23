.class Lcom/mycompany/app/setting/SettingVideoSub$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingVideoSub;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingVideoSub;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingVideoSub$22;->c:Lcom/mycompany/app/setting/SettingVideoSub;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingVideoSub$22;->c:Lcom/mycompany/app/setting/SettingVideoSub;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingVideoSub;->l2:Lcom/mycompany/app/view/MySwitchView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-boolean v1, p1, Lcom/mycompany/app/setting/SettingVideoSub;->A2:Z

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    xor-int/2addr v1, v2

    .line 12
    iput-boolean v1, p1, Lcom/mycompany/app/setting/SettingVideoSub;->A2:Z

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MySwitchView;->b(ZZ)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingVideoSub;->J1:Lcom/mycompany/app/video/VideoSubLayout2;

    .line 18
    .line 19
    iget-boolean p1, p1, Lcom/mycompany/app/setting/SettingVideoSub;->A2:Z

    .line 20
    .line 21
    iget-object v0, v0, Lcom/mycompany/app/video/VideoSubLayout2;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    :goto_0
    return-void

    .line 26
    :cond_1
    if-eqz p1, :cond_2

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    const/16 p1, 0x8

    .line 31
    .line 32
    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
