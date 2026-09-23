.class Lcom/mycompany/app/setting/SettingVideoSub$30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingVideoSub$30;->c:Lcom/mycompany/app/setting/SettingVideoSub;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVideoSub$30;->c:Lcom/mycompany/app/setting/SettingVideoSub;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 4
    .line 5
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->dev_cat:I

    .line 6
    .line 7
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->Q2:Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    int-to-float v2, v2

    .line 21
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    int-to-float v1, v1

    .line 26
    div-float/2addr v2, v1

    .line 27
    iput v2, v0, Lcom/mycompany/app/setting/SettingVideoSub;->R2:F

    .line 28
    .line 29
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->P2:Lcom/mycompany/app/view/GlideRequests;

    .line 30
    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    invoke-static {v0}, Lcom/mycompany/app/view/GlideApp;->a(Landroidx/fragment/app/FragmentActivity;)Lcom/mycompany/app/view/GlideRequests;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->P2:Lcom/mycompany/app/view/GlideRequests;

    .line 38
    .line 39
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingVideoSub;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    :goto_0
    return-void

    .line 44
    :cond_2
    new-instance v1, Lcom/mycompany/app/setting/SettingVideoSub$30$1;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingVideoSub$30$1;-><init>(Lcom/mycompany/app/setting/SettingVideoSub$30;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 50
    .line 51
    .line 52
    return-void
.end method
