.class Lcom/mycompany/app/dialog/DialogSetTabDetail$ColorAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogSetTabDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ColorAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mycompany/app/dialog/DialogSetTabDetail$ViewPagerHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lcom/mycompany/app/dialog/DialogSetTabDetail;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetTabDetail;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail$ColorAdapter;->d:Lcom/mycompany/app/dialog/DialogSetTabDetail;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final d()I
    .locals 1

    .line 1
    sget-object v0, Lcom/mycompany/app/main/MainConst;->s:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public final n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 1
    check-cast p1, Lcom/mycompany/app/dialog/DialogSetTabDetail$ViewPagerHolder;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetTabDetail$ViewPagerHolder;->u:Lcom/mycompany/app/view/MyButtonCheck;

    .line 4
    .line 5
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    if-ltz p2, :cond_4

    .line 11
    .line 12
    sget-object v1, Lcom/mycompany/app/main/MainConst;->s:[I

    .line 13
    .line 14
    array-length v2, v1

    .line 15
    if-lt p2, v2, :cond_1

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_1
    aget v1, v1, p2

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v1}, Lcom/mycompany/app/view/MyButtonCheck;->m(II)V

    .line 24
    .line 25
    .line 26
    const/high16 p1, -0x1000000

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    if-ne v1, p1, :cond_2

    .line 30
    .line 31
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    const p1, -0xc0c0c1

    .line 36
    .line 37
    .line 38
    sget v1, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 39
    .line 40
    invoke-virtual {v0, p1, v1}, Lcom/mycompany/app/view/MyButtonCheck;->n(II)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {v0, v2, v2}, Lcom/mycompany/app/view/MyButtonCheck;->n(II)V

    .line 45
    .line 46
    .line 47
    :goto_0
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_white_24:I

    .line 48
    .line 49
    invoke-virtual {v0, p1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail$ColorAdapter;->d:Lcom/mycompany/app/dialog/DialogSetTabDetail;

    .line 53
    .line 54
    iget p1, p1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->Q0:I

    .line 55
    .line 56
    if-ne p2, p1, :cond_3

    .line 57
    .line 58
    const/4 p1, 0x1

    .line 59
    goto :goto_1

    .line 60
    :cond_3
    move p1, v2

    .line 61
    :goto_1
    invoke-virtual {v0, p1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 62
    .line 63
    .line 64
    new-instance p1, Lcom/mycompany/app/dialog/DialogSetTabDetail$ColorAdapter$1;

    .line 65
    .line 66
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogSetTabDetail$ColorAdapter$1;-><init>(Lcom/mycompany/app/dialog/DialogSetTabDetail$ColorAdapter;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    .line 71
    .line 72
    :cond_4
    :goto_2
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
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    new-instance p2, Lcom/mycompany/app/view/MyButtonCheck;

    .line 10
    .line 11
    invoke-direct {p2, p1}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    sget p1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 15
    .line 16
    int-to-float v0, p1

    .line 17
    sget v1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 18
    .line 19
    add-int/2addr p1, v1

    .line 20
    int-to-float p1, p1

    .line 21
    invoke-virtual {p2, v0, p1}, Lcom/mycompany/app/view/MyButtonCheck;->o(FF)V

    .line 22
    .line 23
    .line 24
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    .line 25
    .line 26
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 27
    .line 28
    sget v1, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 29
    .line 30
    invoke-direct {p1, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    .line 35
    .line 36
    new-instance p1, Lcom/mycompany/app/dialog/DialogSetTabDetail$ViewPagerHolder;

    .line 37
    .line 38
    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogSetTabDetail$ViewPagerHolder;->u:Lcom/mycompany/app/view/MyButtonCheck;

    .line 42
    .line 43
    return-object p1
.end method
