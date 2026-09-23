.class Lcom/mycompany/app/setting/SettingLand$14;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 5
    .line 6
    sget p1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 7
    .line 8
    mul-int/lit8 v4, p1, 0x4

    .line 9
    .line 10
    int-to-float v5, p1

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    move-object v0, p2

    .line 14
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
