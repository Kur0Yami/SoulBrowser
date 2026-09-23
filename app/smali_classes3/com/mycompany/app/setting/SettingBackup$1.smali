.class Lcom/mycompany/app/setting/SettingBackup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingBackup;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingBackup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingBackup$1;->c:Lcom/mycompany/app/setting/SettingBackup;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    sget v0, Lcom/mycompany/app/setting/SettingBackup;->l2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingBackup$1;->c:Lcom/mycompany/app/setting/SettingBackup;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->K1:Landroid/widget/FrameLayout;

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    new-instance v1, Lcom/mycompany/app/view/MyCoverView;

    .line 16
    .line 17
    iget-object v2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 18
    .line 19
    invoke-direct {v1, v2}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingBackup;->Y1:Lcom/mycompany/app/view/MyCoverView;

    .line 23
    .line 24
    const/16 v2, 0x8

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingBackup;->Y1:Lcom/mycompany/app/view/MyCoverView;

    .line 30
    .line 31
    new-instance v2, Lcom/mycompany/app/setting/SettingBackup$5;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->K1:Landroid/widget/FrameLayout;

    .line 40
    .line 41
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingBackup;->Y1:Lcom/mycompany/app/view/MyCoverView;

    .line 42
    .line 43
    const/4 v3, -0x1

    .line 44
    invoke-virtual {v1, v2, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 45
    .line 46
    .line 47
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 48
    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    :goto_1
    return-void

    .line 52
    :cond_2
    new-instance v2, Lcom/mycompany/app/setting/SettingBackup$2;

    .line 53
    .line 54
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingBackup$2;-><init>(Lcom/mycompany/app/setting/SettingBackup;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    .line 59
    .line 60
    return-void
.end method
