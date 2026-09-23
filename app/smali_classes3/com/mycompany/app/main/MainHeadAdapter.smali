.class public Lcom/mycompany/app/main/MainHeadAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/main/MainHeadAdapter$HeadHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mycompany/app/main/MainHeadAdapter$HeadHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public d:I

.field public e:Lcom/mycompany/app/view/MyManagerGrid;

.field public f:Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;


# virtual methods
.method public final d()I
    .locals 1

    .line 1
    sget-object v0, Lcom/mycompany/app/main/MainConst;->u:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public final n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 1
    check-cast p1, Lcom/mycompany/app/main/MainHeadAdapter$HeadHolder;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    instance-of v1, v0, Lcom/mycompany/app/view/MyButtonCheck;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/mycompany/app/main/MainConst;->u:[I

    .line 17
    .line 18
    aget p2, v1, p2

    .line 19
    .line 20
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 21
    .line 22
    .line 23
    new-instance p2, Lcom/mycompany/app/main/MainHeadAdapter$1;

    .line 24
    .line 25
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainHeadAdapter$1;-><init>(Lcom/mycompany/app/main/MainHeadAdapter;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    .line 30
    .line 31
    check-cast v0, Lcom/mycompany/app/view/MyButtonCheck;

    .line 32
    .line 33
    iget p2, p0, Lcom/mycompany/app/main/MainHeadAdapter;->d:I

    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    const/4 v1, 0x0

    .line 40
    if-ne p2, p1, :cond_2

    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move p1, v1

    .line 45
    :goto_1
    invoke-virtual {v0, p1, v1}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 46
    .line 47
    .line 48
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
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_white_24:I

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p2, p1, v0}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    .line 21
    .line 22
    const/4 v0, -0x1

    .line 23
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 24
    .line 25
    invoke-direct {p1, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    .line 30
    .line 31
    const p1, 0x41ffffff    # 31.999998f

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 35
    .line 36
    .line 37
    new-instance p1, Lcom/mycompany/app/main/MainHeadAdapter$HeadHolder;

    .line 38
    .line 39
    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    return-object p1
.end method
