.class Lcom/mycompany/app/setting/SettingHandArea$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/image/ImageSizeListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingHandArea;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingHandArea;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingHandArea$1;->a:Lcom/mycompany/app/setting/SettingHandArea;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHandArea$1;->a:Lcom/mycompany/app/setting/SettingHandArea;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingHandArea;->I1:Landroid/view/View;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iput p3, p1, Lcom/mycompany/app/setting/SettingHandArea;->P1:I

    .line 9
    .line 10
    int-to-float p2, p3

    .line 11
    const p3, 0x3ecccccc    # 0.39999998f

    .line 12
    .line 13
    .line 14
    mul-float/2addr p3, p2

    .line 15
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    iput p3, p1, Lcom/mycompany/app/setting/SettingHandArea;->Q1:I

    .line 20
    .line 21
    const/high16 p3, 0x3f000000    # 0.5f

    .line 22
    .line 23
    mul-float/2addr p3, p2

    .line 24
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    iput p3, p1, Lcom/mycompany/app/setting/SettingHandArea;->R1:I

    .line 29
    .line 30
    const p3, 0x3dccccd0    # 0.100000024f

    .line 31
    .line 32
    .line 33
    mul-float/2addr p2, p3

    .line 34
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    iput p2, p1, Lcom/mycompany/app/setting/SettingHandArea;->S1:I

    .line 39
    .line 40
    iget p2, p1, Lcom/mycompany/app/setting/SettingHandArea;->P1:I

    .line 41
    .line 42
    int-to-float p2, p2

    .line 43
    iget p3, p1, Lcom/mycompany/app/setting/SettingHandArea;->X1:I

    .line 44
    .line 45
    int-to-float p3, p3

    .line 46
    const/high16 v0, 0x42c80000    # 100.0f

    .line 47
    .line 48
    div-float/2addr p3, v0

    .line 49
    const/high16 v0, 0x3f800000    # 1.0f

    .line 50
    .line 51
    sub-float/2addr v0, p3

    .line 52
    mul-float/2addr v0, p2

    .line 53
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    iput p2, p1, Lcom/mycompany/app/setting/SettingHandArea;->T1:I

    .line 58
    .line 59
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingHandArea;->I1:Landroid/view/View;

    .line 60
    .line 61
    iget p3, p1, Lcom/mycompany/app/setting/SettingHandArea;->S1:I

    .line 62
    .line 63
    int-to-float p3, p3

    .line 64
    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 65
    .line 66
    .line 67
    iget p2, p1, Lcom/mycompany/app/setting/SettingHandArea;->T1:I

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Lcom/mycompany/app/setting/SettingHandArea;->G0(I)V

    .line 70
    .line 71
    .line 72
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingHandArea;->L1:Lcom/mycompany/app/view/MyArrowView;

    .line 73
    .line 74
    if-eqz p2, :cond_1

    .line 75
    .line 76
    iget p3, p1, Lcom/mycompany/app/setting/SettingHandArea;->T1:I

    .line 77
    .line 78
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 79
    .line 80
    add-int/2addr p3, v0

    .line 81
    int-to-float p3, p3

    .line 82
    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 83
    .line 84
    .line 85
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingHandArea;->L1:Lcom/mycompany/app/view/MyArrowView;

    .line 86
    .line 87
    const/4 p3, 0x0

    .line 88
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingHandArea;->L1:Lcom/mycompany/app/view/MyArrowView;

    .line 92
    .line 93
    const/4 p2, 0x4

    .line 94
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyArrowView;->setType(I)V

    .line 95
    .line 96
    .line 97
    :cond_1
    :goto_0
    return-void
.end method
