.class Lcom/mycompany/app/setting/SettingMain$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingMain;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingMain;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingMain$10;->c:Lcom/mycompany/app/setting/SettingMain;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingMain$10;->c:Lcom/mycompany/app/setting/SettingMain;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingMain;->j2:Lcom/mycompany/app/view/MyButtonImage;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x4

    .line 9
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingMain;->h2:Lcom/mycompany/app/view/MyEditPure;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v1}, Lcom/mycompany/app/setting/SettingMain;->R0(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
