.class Lcom/mycompany/app/setting/SettingLand$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingLand$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingLand$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingLand$1$1;->c:Lcom/mycompany/app/setting/SettingLand$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand$1$1;->c:Lcom/mycompany/app/setting/SettingLand$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingLand$1;->a:Lcom/mycompany/app/setting/SettingLand;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->o2:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Lcom/mycompany/app/web/WebNestView;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebNestView;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->p2:Lcom/mycompany/app/web/WebNestView;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebNestView;->setNoAutofill(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->o2:Landroid/widget/FrameLayout;

    .line 22
    .line 23
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingLand;->p2:Lcom/mycompany/app/web/WebNestView;

    .line 24
    .line 25
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 26
    .line 27
    const/4 v5, -0x1

    .line 28
    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 35
    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    :goto_0
    return-void

    .line 39
    :cond_1
    new-instance v2, Lcom/mycompany/app/setting/SettingLand$12;

    .line 40
    .line 41
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingLand$12;-><init>(Lcom/mycompany/app/setting/SettingLand;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
    return-void
.end method
