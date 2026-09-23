.class Lcom/mycompany/app/dialog/DialogWebCerti$CertiAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogWebCerti;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CertiAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mycompany/app/dialog/DialogWebCerti$CertiHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Ljava/util/List;

.field public e:I

.field public final synthetic f:Lcom/mycompany/app/dialog/DialogWebCerti;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebCerti;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebCerti$CertiAdapter;->f:Lcom/mycompany/app/dialog/DialogWebCerti;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogWebCerti$CertiAdapter;->d:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/dialog/DialogWebCerti$CertiAdapter;->e:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebCerti$CertiAdapter;->d:Ljava/util/List;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    return v0

    .line 12
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public final e(I)J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 1
    check-cast p1, Lcom/mycompany/app/dialog/DialogWebCerti$CertiHolder;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebCerti$CertiAdapter;->d:Ljava/util/List;

    .line 9
    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    if-ltz p2, :cond_4

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-lt p2, v0, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogWebCerti$CertiHolder;->u:Landroidx/appcompat/widget/AppCompatTextView;

    .line 22
    .line 23
    if-nez p1, :cond_2

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebCerti$CertiAdapter;->d:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    check-cast p2, Ljava/lang/CharSequence;

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 38
    .line 39
    if-eqz p2, :cond_3

    .line 40
    .line 41
    const p2, -0x50506

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    const/high16 p2, -0x1000000

    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    .line 52
    .line 53
    :goto_0
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogWebCerti$CertiAdapter;->f:Lcom/mycompany/app/dialog/DialogWebCerti;

    .line 54
    .line 55
    iget-boolean v0, p2, Lcom/mycompany/app/dialog/DialogWebCerti;->h0:Z

    .line 56
    .line 57
    if-nez v0, :cond_4

    .line 58
    .line 59
    iget p2, p2, Lcom/mycompany/app/dialog/DialogWebCerti;->i0:I

    .line 60
    .line 61
    int-to-float p2, p2

    .line 62
    const/high16 v0, 0x42c80000    # 100.0f

    .line 63
    .line 64
    div-float/2addr p2, v0

    .line 65
    const/4 v0, 0x0

    .line 66
    cmpl-float v0, p2, v0

    .line 67
    .line 68
    if-lez v0, :cond_4

    .line 69
    .line 70
    const/high16 v0, 0x41600000    # 14.0f

    .line 71
    .line 72
    mul-float/2addr p2, v0

    .line 73
    const/4 v0, 0x1

    .line 74
    invoke-virtual {p1, v0, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 75
    .line 76
    .line 77
    :cond_4
    :goto_1
    return-void
.end method

.method public final o(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object p2

    .line 9
    :cond_0
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 10
    .line 11
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    .line 15
    .line 16
    const/4 p2, -0x1

    .line 17
    const/4 v1, -0x2

    .line 18
    invoke-direct {p1, p2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebCerti$CertiAdapter;->f:Lcom/mycompany/app/dialog/DialogWebCerti;

    .line 25
    .line 26
    iget-boolean p1, p1, Lcom/mycompany/app/dialog/DialogWebCerti;->h0:Z

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    const/high16 p2, 0x41800000    # 16.0f

    .line 32
    .line 33
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 34
    .line 35
    .line 36
    const/16 p1, 0x11

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 39
    .line 40
    .line 41
    :cond_1
    new-instance p1, Lcom/mycompany/app/dialog/DialogWebCerti$CertiHolder;

    .line 42
    .line 43
    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogWebCerti$CertiHolder;->u:Landroidx/appcompat/widget/AppCompatTextView;

    .line 47
    .line 48
    return-object p1
.end method
