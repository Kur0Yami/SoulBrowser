.class Lcom/mycompany/app/main/image/MainImagePreview$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImagePreview;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImagePreview;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$8;->c:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview$8;->c:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 2
    .line 3
    iget-object v0, v1, Lcom/mycompany/app/main/image/MainImagePreview;->C1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/main/image/MainImagePreview;->T0()V

    .line 9
    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    :goto_0
    return-void

    .line 14
    :cond_1
    iget-object v0, v1, Lcom/mycompany/app/main/image/MainImagePreview;->h1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyFadeFrame;->setAutoHide(Z)V

    .line 20
    .line 21
    .line 22
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 28
    .line 29
    sget v3, Lnet/kaki87/soul2/testing/R$string;->soul_home:I

    .line 30
    .line 31
    invoke-direct {v0, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    sget v3, Lnet/kaki87/soul2/testing/R$string;->phone_home:I

    .line 41
    .line 42
    invoke-direct {v0, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 49
    .line 50
    iget-object v2, v1, Lcom/mycompany/app/main/image/MainImagePreview;->g1:Landroid/widget/FrameLayout;

    .line 51
    .line 52
    new-instance v6, Lcom/mycompany/app/main/image/MainImagePreview$32;

    .line 53
    .line 54
    invoke-direct {v6, v1}, Lcom/mycompany/app/main/image/MainImagePreview$32;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 55
    .line 56
    .line 57
    const/4 v5, 0x1

    .line 58
    move-object v3, p1

    .line 59
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 60
    .line 61
    .line 62
    iput-object v0, v1, Lcom/mycompany/app/main/image/MainImagePreview;->C1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 63
    .line 64
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 65
    .line 66
    return-void
.end method
