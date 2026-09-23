.class Lcom/mycompany/app/setting/SettingLand$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/image/ImageSizeListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingLand;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingLand;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingLand$1;->a:Lcom/mycompany/app/setting/SettingLand;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingLand$1;->a:Lcom/mycompany/app/setting/SettingLand;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingLand;->o2:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    if-eqz p2, :cond_5

    .line 9
    .line 10
    if-eqz p3, :cond_5

    .line 11
    .line 12
    if-ge p2, p3, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iput p2, p1, Lcom/mycompany/app/setting/SettingLand;->T1:I

    .line 16
    .line 17
    iput p3, p1, Lcom/mycompany/app/setting/SettingLand;->U1:I

    .line 18
    .line 19
    sub-int/2addr p2, p3

    .line 20
    div-int/lit8 p2, p2, 0x2

    .line 21
    .line 22
    iput p2, p1, Lcom/mycompany/app/setting/SettingLand;->V1:I

    .line 23
    .line 24
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingLand;->K1:Landroid/view/View;

    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 31
    .line 32
    if-eqz p2, :cond_2

    .line 33
    .line 34
    iget p3, p1, Lcom/mycompany/app/setting/SettingLand;->V1:I

    .line 35
    .line 36
    iput p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 37
    .line 38
    :cond_2
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingLand;->L1:Landroid/view/View;

    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 45
    .line 46
    if-eqz p2, :cond_3

    .line 47
    .line 48
    iget p3, p1, Lcom/mycompany/app/setting/SettingLand;->V1:I

    .line 49
    .line 50
    iput p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 51
    .line 52
    :cond_3
    iget p2, p1, Lcom/mycompany/app/setting/SettingLand;->W1:I

    .line 53
    .line 54
    iget p3, p1, Lcom/mycompany/app/setting/SettingLand;->X1:I

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, p2, p3, v0}, Lcom/mycompany/app/setting/SettingLand;->I0(III)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 61
    .line 62
    if-nez p1, :cond_4

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    new-instance p2, Lcom/mycompany/app/setting/SettingLand$1$1;

    .line 66
    .line 67
    invoke-direct {p2, p0}, Lcom/mycompany/app/setting/SettingLand$1$1;-><init>(Lcom/mycompany/app/setting/SettingLand$1;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    .line 72
    .line 73
    :cond_5
    :goto_0
    return-void
.end method
