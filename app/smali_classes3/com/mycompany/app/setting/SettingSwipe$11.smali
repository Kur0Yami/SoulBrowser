.class Lcom/mycompany/app/setting/SettingSwipe$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyFadeListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingSwipe;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingSwipe;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingSwipe$11;->a:Lcom/mycompany/app/setting/SettingSwipe;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingSwipe$11;->a:Lcom/mycompany/app/setting/SettingSwipe;

    .line 5
    .line 6
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingSwipe;->c2:Lcom/mycompany/app/view/MyFadeFrame;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v1, p1, Lcom/mycompany/app/setting/SettingSwipe;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeFrame;->f()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingSwipe;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 18
    .line 19
    iget-object v1, p1, Lcom/mycompany/app/setting/SettingSwipe;->c2:Lcom/mycompany/app/view/MyFadeFrame;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p1, Lcom/mycompany/app/setting/SettingSwipe;->c2:Lcom/mycompany/app/view/MyFadeFrame;

    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method public final b(ZZ)V
    .locals 0

    .line 1
    return-void
.end method
