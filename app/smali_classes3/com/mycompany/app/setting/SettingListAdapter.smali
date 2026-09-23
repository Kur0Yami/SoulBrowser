.class public Lcom/mycompany/app/setting/SettingListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;,
        Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;,
        Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Lcom/mycompany/app/main/MainActivity;

.field public e:Ljava/util/List;

.field public final f:Z

.field public g:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public h:Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;

.field public i:Z

.field public j:Lcom/mycompany/app/view/GlideRequests;

.field public k:Landroid/os/Handler;

.field public l:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;ZLandroidx/recyclerview/widget/LinearLayoutManager;Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingListAdapter;->e:Ljava/util/List;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/setting/SettingListAdapter;->f:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/setting/SettingListAdapter;->g:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/mycompany/app/setting/SettingListAdapter;->h:Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;

    .line 11
    .line 12
    return-void
.end method

.method public static y(Landroid/view/View;)Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    instance-of v0, p0, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 12
    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    :goto_0
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_2
    check-cast p0, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 18
    .line 19
    return-object p0
.end method


# virtual methods
.method public final A(IZ)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/setting/SettingListAdapter;->v(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/mycompany/app/setting/SettingListAdapter;->w(I)Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    iget v2, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->b:I

    .line 12
    .line 13
    if-eq v2, p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iput-boolean p2, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->k:Z

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/mycompany/app/setting/SettingListAdapter;->x(I)Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->z:Lcom/mycompany/app/view/MySwitchView;

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-boolean p2, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->k:Z

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, p2, v0}, Lcom/mycompany/app/view/MySwitchView;->b(ZZ)V

    .line 33
    .line 34
    .line 35
    :cond_2
    :goto_0
    return-void
.end method

.method public final B(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingListAdapter;->e:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingListAdapter;->e:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 29
    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iput-boolean p1, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->s:Z

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    :goto_1
    return-void
.end method

.method public final C(II)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/setting/SettingListAdapter;->v(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/mycompany/app/setting/SettingListAdapter;->w(I)Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    iget v2, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->b:I

    .line 12
    .line 13
    if-eq v2, p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    iput-object p1, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->i:Ljava/lang/String;

    .line 18
    .line 19
    iput p2, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->h:I

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/mycompany/app/setting/SettingListAdapter;->x(I)Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_3

    .line 26
    .line 27
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 28
    .line 29
    if-nez p2, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget v0, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->h:I

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 40
    .line 41
    const/4 p2, 0x0

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    const/16 p1, 0x8

    .line 47
    .line 48
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_0
    return-void
.end method

.method public final D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V
    .locals 3

    .line 1
    iget v0, p1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->b:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/mycompany/app/setting/SettingListAdapter;->v(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0, v1}, Lcom/mycompany/app/setting/SettingListAdapter;->w(I)Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    iget v2, v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->b:I

    .line 14
    .line 15
    if-eq v2, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingListAdapter;->e:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->h(I)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method public final E(Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingListAdapter;->e:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final F(II)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/setting/SettingListAdapter;->v(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/mycompany/app/setting/SettingListAdapter;->w(I)Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    iget v2, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->b:I

    .line 12
    .line 13
    if-eq v2, p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    iput-object p1, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->g:Ljava/lang/String;

    .line 18
    .line 19
    iput p2, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->f:I

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/mycompany/app/setting/SettingListAdapter;->x(I)Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_3

    .line 26
    .line 27
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 28
    .line 29
    if-nez p2, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget v0, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->f:I

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 40
    .line 41
    const/4 p2, 0x0

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    const/16 p1, 0x8

    .line 47
    .line 48
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_0
    return-void
.end method

.method public final G(ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/setting/SettingListAdapter;->v(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/mycompany/app/setting/SettingListAdapter;->w(I)Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    iget v2, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->b:I

    .line 12
    .line 13
    if-eq v2, p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iput-object p2, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->g:Ljava/lang/String;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput p1, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->f:I

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/mycompany/app/setting/SettingListAdapter;->x(I)Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    if-eqz p2, :cond_3

    .line 26
    .line 27
    iget-object v0, p2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v0, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->g:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    iget-object v0, p2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 41
    .line 42
    iget-object v1, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->g:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    iget-object p2, p2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 48
    .line 49
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    iget-object p1, p2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 54
    .line 55
    const/16 p2, 0x8

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    :cond_3
    :goto_0
    return-void
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/setting/SettingListAdapter;->l:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingListAdapter;->e:Ljava/util/List;

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
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingListAdapter;->e:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-ltz p1, :cond_1

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lt p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingListAdapter;->e:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 21
    .line 22
    iget p1, p1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->b:I

    .line 23
    .line 24
    int-to-long v0, p1

    .line 25
    return-wide v0

    .line 26
    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    .line 27
    .line 28
    return-wide v0
.end method

.method public final f(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingListAdapter;->e:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-ltz p1, :cond_1

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lt p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingListAdapter;->e:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 21
    .line 22
    iget p1, p1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->a:I

    .line 23
    .line 24
    return p1

    .line 25
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 26
    return p1
.end method

.method public final n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    check-cast v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 8
    .line 9
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 10
    .line 11
    if-eqz v3, :cond_63

    .line 12
    .line 13
    iget-object v3, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyRoundItem;

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    goto/16 :goto_37

    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0, v1}, Lcom/mycompany/app/setting/SettingListAdapter;->w(I)Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-nez v3, :cond_1

    .line 24
    .line 25
    goto/16 :goto_37

    .line 26
    .line 27
    :cond_1
    iget v4, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->v:I

    .line 28
    .line 29
    iget v5, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->o:I

    .line 30
    .line 31
    iget-object v6, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->d:Ljava/lang/String;

    .line 32
    .line 33
    iget v7, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->p:I

    .line 34
    .line 35
    iget-boolean v8, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->t:Z

    .line 36
    .line 37
    iget-object v9, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->r:Ljava/lang/String;

    .line 38
    .line 39
    iget v10, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->a:I

    .line 40
    .line 41
    iget-object v11, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyRoundItem;

    .line 42
    .line 43
    invoke-virtual {v11, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    const/4 v11, 0x1

    .line 47
    if-eq v10, v11, :cond_63

    .line 48
    .line 49
    const/4 v12, 0x2

    .line 50
    if-ne v10, v12, :cond_2

    .line 51
    .line 52
    goto/16 :goto_37

    .line 53
    .line 54
    :cond_2
    iget-object v12, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyRoundItem;

    .line 55
    .line 56
    const/16 v14, 0x15

    .line 57
    .line 58
    const/16 v15, 0x14

    .line 59
    .line 60
    move/from16 p1, v11

    .line 61
    .line 62
    const/16 v11, 0x13

    .line 63
    .line 64
    const v16, 0x3e4ccccd    # 0.2f

    .line 65
    .line 66
    .line 67
    const/4 v13, 0x0

    .line 68
    if-eqz v12, :cond_9

    .line 69
    .line 70
    if-eq v10, v11, :cond_6

    .line 71
    .line 72
    if-eq v10, v15, :cond_6

    .line 73
    .line 74
    if-eq v10, v14, :cond_6

    .line 75
    .line 76
    const/16 v14, 0x16

    .line 77
    .line 78
    if-eq v10, v14, :cond_6

    .line 79
    .line 80
    const/16 v14, 0x18

    .line 81
    .line 82
    if-ne v10, v14, :cond_3

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    iget-boolean v14, v0, Lcom/mycompany/app/setting/SettingListAdapter;->f:Z

    .line 86
    .line 87
    if-eqz v14, :cond_5

    .line 88
    .line 89
    iget-object v14, v0, Lcom/mycompany/app/setting/SettingListAdapter;->e:Ljava/util/List;

    .line 90
    .line 91
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result v14

    .line 95
    add-int/lit8 v14, v14, -0x1

    .line 96
    .line 97
    if-eq v1, v14, :cond_4

    .line 98
    .line 99
    move/from16 v1, p1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_4
    move v1, v13

    .line 103
    :goto_0
    invoke-virtual {v12, v1}, Lcom/mycompany/app/view/MyRoundItem;->setDrawLine(Z)V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_5
    move/from16 v1, p1

    .line 108
    .line 109
    invoke-virtual {v12, v1}, Lcom/mycompany/app/view/MyRoundItem;->setDrawLine(Z)V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_6
    :goto_1
    invoke-virtual {v12, v13}, Lcom/mycompany/app/view/MyRoundItem;->setDrawLine(Z)V

    .line 114
    .line 115
    .line 116
    :goto_2
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyRoundItem;

    .line 117
    .line 118
    iget v12, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->u:I

    .line 119
    .line 120
    invoke-virtual {v1, v12}, Lcom/mycompany/app/view/MyRoundItem;->setRound(I)V

    .line 121
    .line 122
    .line 123
    const/16 v1, 0xa

    .line 124
    .line 125
    if-ne v10, v1, :cond_8

    .line 126
    .line 127
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyRoundItem;

    .line 128
    .line 129
    iget-boolean v12, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->s:Z

    .line 130
    .line 131
    if-eqz v12, :cond_7

    .line 132
    .line 133
    move/from16 v12, v16

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_7
    const/high16 v12, 0x3f800000    # 1.0f

    .line 137
    .line 138
    :goto_3
    invoke-virtual {v1, v12}, Landroid/view/View;->setAlpha(F)V

    .line 139
    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_8
    const/16 v1, 0xb

    .line 143
    .line 144
    if-eq v10, v1, :cond_9

    .line 145
    .line 146
    const/16 v14, 0x16

    .line 147
    .line 148
    if-eq v10, v14, :cond_9

    # Skip item click for type-4 description text so URL spans remain tappable.
    const/4 v1, 0x4

    if-eq v10, v1, :cond_9

    .line 149
    .line 150
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyRoundItem;

    .line 151
    .line 152
    new-instance v12, Lcom/mycompany/app/setting/SettingListAdapter$1;

    .line 153
    .line 154
    invoke-direct {v12, v0}, Lcom/mycompany/app/setting/SettingListAdapter$1;-><init>(Lcom/mycompany/app/setting/SettingListAdapter;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    .line 159
    .line 160
    :cond_9
    :goto_4
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 161
    .line 162
    const/16 v12, 0x12

    .line 163
    .line 164
    const/16 v15, 0xd

    .line 165
    .line 166
    const/4 v11, 0x6

    .line 167
    const/16 v14, 0x8

    .line 168
    .line 169
    if-eqz v1, :cond_11

    .line 170
    .line 171
    if-eqz v10, :cond_b

    .line 172
    .line 173
    if-eq v10, v11, :cond_b

    .line 174
    .line 175
    if-eq v10, v15, :cond_b

    .line 176
    .line 177
    if-ne v10, v12, :cond_a

    .line 178
    .line 179
    goto :goto_5

    .line 180
    :cond_a
    const/high16 v11, 0x3f800000    # 1.0f

    .line 181
    .line 182
    invoke-virtual {v1, v11}, Landroid/view/View;->setAlpha(F)V

    .line 183
    .line 184
    .line 185
    goto :goto_7

    .line 186
    :cond_b
    :goto_5
    if-eqz v8, :cond_c

    .line 187
    .line 188
    move/from16 v11, v16

    .line 189
    .line 190
    goto :goto_6

    .line 191
    :cond_c
    const/high16 v11, 0x3f800000    # 1.0f

    .line 192
    .line 193
    :goto_6
    invoke-virtual {v1, v11}, Landroid/view/View;->setAlpha(F)V

    .line 194
    .line 195
    .line 196
    :goto_7
    iget v1, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->c:I

    .line 197
    .line 198
    if-eqz v1, :cond_d

    .line 199
    .line 200
    iget-object v6, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 201
    .line 202
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(I)V

    .line 203
    .line 204
    .line 205
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 206
    .line 207
    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 208
    .line 209
    .line 210
    goto :goto_a

    .line 211
    :cond_d
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-nez v1, :cond_10

    .line 216
    .line 217
    iget-boolean v1, v0, Lcom/mycompany/app/setting/SettingListAdapter;->i:Z

    .line 218
    .line 219
    if-eqz v1, :cond_f

    .line 220
    .line 221
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    if-nez v1, :cond_f

    .line 226
    .line 227
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 228
    .line 229
    if-eqz v1, :cond_e

    .line 230
    .line 231
    const/4 v1, -0x1

    .line 232
    goto :goto_8

    .line 233
    :cond_e
    const v1, -0xbbcca

    .line 234
    .line 235
    .line 236
    :goto_8
    iget-object v11, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 237
    .line 238
    invoke-static {v6, v1, v13, v9}, Lcom/mycompany/app/main/MainUtil;->t6(Ljava/lang/String;IILjava/lang/String;)Landroid/text/SpannableString;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    sget-object v6, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 243
    .line 244
    invoke-virtual {v11, v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 245
    .line 246
    .line 247
    goto :goto_9

    .line 248
    :cond_f
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 249
    .line 250
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    .line 252
    .line 253
    :goto_9
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 254
    .line 255
    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 256
    .line 257
    .line 258
    goto :goto_a

    .line 259
    :cond_10
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 260
    .line 261
    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 262
    .line 263
    .line 264
    :cond_11
    :goto_a
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->w:Landroid/widget/ImageView;

    .line 265
    .line 266
    if-eqz v1, :cond_13

    .line 267
    .line 268
    iget v6, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->e:I

    .line 269
    .line 270
    if-eqz v6, :cond_12

    .line 271
    .line 272
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 273
    .line 274
    .line 275
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->w:Landroid/widget/ImageView;

    .line 276
    .line 277
    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 278
    .line 279
    .line 280
    goto :goto_b

    .line 281
    :cond_12
    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 282
    .line 283
    .line 284
    :cond_13
    :goto_b
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 285
    .line 286
    const/4 v6, 0x0

    .line 287
    if-eqz v1, :cond_1e

    .line 288
    .line 289
    if-eqz v10, :cond_15

    .line 290
    .line 291
    if-eq v10, v15, :cond_15

    .line 292
    .line 293
    if-ne v10, v12, :cond_14

    .line 294
    .line 295
    goto :goto_c

    .line 296
    :cond_14
    const/high16 v11, 0x3f800000    # 1.0f

    .line 297
    .line 298
    invoke-virtual {v1, v11}, Landroid/view/View;->setAlpha(F)V

    .line 299
    .line 300
    .line 301
    goto :goto_e

    .line 302
    :cond_15
    :goto_c
    if-eqz v8, :cond_16

    .line 303
    .line 304
    move/from16 v11, v16

    .line 305
    .line 306
    goto :goto_d

    .line 307
    :cond_16
    const/high16 v11, 0x3f800000    # 1.0f

    .line 308
    .line 309
    :goto_d
    invoke-virtual {v1, v11}, Landroid/view/View;->setAlpha(F)V

    .line 310
    .line 311
    .line 312
    :goto_e
    iget-object v1, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->j:Ljava/lang/String;

    .line 313
    .line 314
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    if-nez v1, :cond_18

    .line 319
    .line 320
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 321
    .line 322
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->u1(Landroid/content/Context;)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v11

    .line 330
    invoke-static {v1, v11}, Lcom/mycompany/app/main/MainUtil;->w1(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    if-eqz v1, :cond_17

    .line 335
    .line 336
    iget-object v11, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 337
    .line 338
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 339
    .line 340
    .line 341
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 342
    .line 343
    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 344
    .line 345
    .line 346
    :cond_17
    :goto_f
    const/16 v1, 0xa

    .line 347
    .line 348
    goto :goto_10

    .line 349
    :cond_18
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 350
    .line 351
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 352
    .line 353
    .line 354
    goto :goto_f

    .line 355
    :goto_10
    if-ne v10, v1, :cond_1b

    .line 356
    .line 357
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    if-nez v1, :cond_19

    .line 362
    .line 363
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 364
    .line 365
    new-instance v11, Ljava/lang/StringBuilder;

    .line 366
    .line 367
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    .line 369
    .line 370
    add-int/lit8 v6, v7, 0x1

    .line 371
    .line 372
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v6

    .line 382
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    .line 384
    .line 385
    goto :goto_11

    .line 386
    :cond_19
    iget-boolean v1, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->q:Z

    .line 387
    .line 388
    const-string v6, ""

    .line 389
    .line 390
    if-eqz v1, :cond_1a

    .line 391
    .line 392
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 393
    .line 394
    new-instance v11, Ljava/lang/StringBuilder;

    .line 395
    .line 396
    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    invoke-static {v7, v5}, Lcom/mycompany/app/dialog/DialogSetTts;->B(II)F

    .line 400
    .line 401
    .line 402
    move-result v6

    .line 403
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v6

    .line 410
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    .line 412
    .line 413
    goto :goto_11

    .line 414
    :cond_1a
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 415
    .line 416
    new-instance v11, Ljava/lang/StringBuilder;

    .line 417
    .line 418
    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v6

    .line 428
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    .line 430
    .line 431
    goto :goto_11

    .line 432
    :cond_1b
    iget v1, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->f:I

    .line 433
    .line 434
    if-eqz v1, :cond_1c

    .line 435
    .line 436
    iget-object v6, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 437
    .line 438
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(I)V

    .line 439
    .line 440
    .line 441
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 442
    .line 443
    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 444
    .line 445
    .line 446
    goto :goto_11

    .line 447
    :cond_1c
    iget-object v1, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->g:Ljava/lang/String;

    .line 448
    .line 449
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 450
    .line 451
    .line 452
    move-result v1

    .line 453
    if-nez v1, :cond_1d

    .line 454
    .line 455
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 456
    .line 457
    iget-object v6, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->g:Ljava/lang/String;

    .line 458
    .line 459
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    .line 461
    .line 462
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 463
    .line 464
    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 465
    .line 466
    .line 467
    goto :goto_11

    .line 468
    :cond_1d
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 469
    .line 470
    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 471
    .line 472
    .line 473
    :cond_1e
    :goto_11
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 474
    .line 475
    if-eqz v1, :cond_26

    .line 476
    .line 477
    if-eqz v10, :cond_20

    .line 478
    .line 479
    const/4 v6, 0x6

    .line 480
    if-eq v10, v6, :cond_20

    .line 481
    .line 482
    if-eq v10, v15, :cond_20

    .line 483
    .line 484
    if-ne v10, v12, :cond_1f

    .line 485
    .line 486
    goto :goto_12

    .line 487
    :cond_1f
    const/high16 v11, 0x3f800000    # 1.0f

    .line 488
    .line 489
    invoke-virtual {v1, v11}, Landroid/view/View;->setAlpha(F)V

    .line 490
    .line 491
    .line 492
    goto :goto_14

    .line 493
    :cond_20
    :goto_12
    if-eqz v8, :cond_21

    .line 494
    .line 495
    move/from16 v11, v16

    .line 496
    .line 497
    goto :goto_13

    .line 498
    :cond_21
    const/high16 v11, 0x3f800000    # 1.0f

    .line 499
    .line 500
    :goto_13
    invoke-virtual {v1, v11}, Landroid/view/View;->setAlpha(F)V

    .line 501
    .line 502
    .line 503
    :goto_14
    iget v1, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->h:I

    .line 504
    .line 505
    if-eqz v1, :cond_22

    .line 506
    .line 507
    iget-object v6, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 508
    .line 509
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(I)V

    .line 510
    .line 511
    .line 512
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 513
    .line 514
    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 515
    .line 516
    .line 517
    goto :goto_17

    .line 518
    :cond_22
    iget-object v1, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->i:Ljava/lang/String;

    .line 519
    .line 520
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 521
    .line 522
    .line 523
    move-result v1

    .line 524
    if-nez v1, :cond_25

    .line 525
    .line 526
    iget-boolean v1, v0, Lcom/mycompany/app/setting/SettingListAdapter;->i:Z

    .line 527
    .line 528
    if-eqz v1, :cond_24

    .line 529
    .line 530
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 531
    .line 532
    .line 533
    move-result v1

    .line 534
    if-nez v1, :cond_24

    .line 535
    .line 536
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 537
    .line 538
    if-eqz v1, :cond_23

    .line 539
    .line 540
    const/4 v12, -0x1

    .line 541
    goto :goto_15

    .line 542
    :cond_23
    const v12, -0xbbcca

    .line 543
    .line 544
    .line 545
    :goto_15
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 546
    .line 547
    iget-object v6, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->i:Ljava/lang/String;

    .line 548
    .line 549
    invoke-static {v6, v12, v13, v9}, Lcom/mycompany/app/main/MainUtil;->t6(Ljava/lang/String;IILjava/lang/String;)Landroid/text/SpannableString;

    .line 550
    .line 551
    .line 552
    move-result-object v6

    .line 553
    sget-object v11, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 554
    .line 555
    invoke-virtual {v1, v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 556
    .line 557
    .line 558
    goto :goto_16

    .line 559
    :cond_24
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 560
    .line 561
    iget-object v6, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->i:Ljava/lang/String;

    .line 562
    .line 563
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->M(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    if-eqz v6, :cond_24_plain

    invoke-static {v6}, Lcom/mycompany/app/setting/SettingInfoUrlSpan;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_16

    :cond_24_plain
    iget-object v6, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->i:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    .line 565
    .line 566
    :goto_16
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 567
    .line 568
    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 569
    .line 570
    .line 571
    goto :goto_17

    .line 572
    :cond_25
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 573
    .line 574
    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 575
    .line 576
    .line 577
    :cond_26
    :goto_17
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->z:Lcom/mycompany/app/view/MySwitchView;

    .line 578
    .line 579
    if-eqz v1, :cond_29

    .line 580
    .line 581
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 582
    .line 583
    .line 584
    const/4 v6, 0x6

    .line 585
    if-ne v10, v6, :cond_28

    .line 586
    .line 587
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->z:Lcom/mycompany/app/view/MySwitchView;

    .line 588
    .line 589
    if-eqz v8, :cond_27

    .line 590
    .line 591
    move/from16 v11, v16

    .line 592
    .line 593
    goto :goto_18

    .line 594
    :cond_27
    const/high16 v11, 0x3f800000    # 1.0f

    .line 595
    .line 596
    :goto_18
    invoke-virtual {v1, v11}, Landroid/view/View;->setAlpha(F)V

    .line 597
    .line 598
    .line 599
    const/high16 v11, 0x3f800000    # 1.0f

    .line 600
    .line 601
    goto :goto_19

    .line 602
    :cond_28
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->z:Lcom/mycompany/app/view/MySwitchView;

    .line 603
    .line 604
    const/high16 v11, 0x3f800000    # 1.0f

    .line 605
    .line 606
    invoke-virtual {v1, v11}, Landroid/view/View;->setAlpha(F)V

    .line 607
    .line 608
    .line 609
    :goto_19
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->z:Lcom/mycompany/app/view/MySwitchView;

    .line 610
    .line 611
    iget-boolean v6, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->k:Z

    .line 612
    .line 613
    invoke-virtual {v1, v6, v13}, Lcom/mycompany/app/view/MySwitchView;->b(ZZ)V

    .line 614
    .line 615
    .line 616
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->z:Lcom/mycompany/app/view/MySwitchView;

    .line 617
    .line 618
    new-instance v6, Lcom/mycompany/app/setting/SettingListAdapter$2;

    .line 619
    .line 620
    invoke-direct {v6, v0}, Lcom/mycompany/app/setting/SettingListAdapter$2;-><init>(Lcom/mycompany/app/setting/SettingListAdapter;)V

    .line 621
    .line 622
    .line 623
    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 624
    .line 625
    .line 626
    goto :goto_1a

    .line 627
    :cond_29
    const/high16 v11, 0x3f800000    # 1.0f

    .line 628
    .line 629
    :goto_1a
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 630
    .line 631
    const v6, -0x1f1f20

    .line 632
    .line 633
    .line 634
    const v12, -0xc0c0c1

    .line 635
    .line 636
    .line 637
    if-eqz v1, :cond_2b

    .line 638
    .line 639
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 640
    .line 641
    .line 642
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 643
    .line 644
    if-eqz v1, :cond_2a

    .line 645
    .line 646
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 647
    .line 648
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 649
    .line 650
    sget v11, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 651
    .line 652
    invoke-virtual {v1, v15, v11}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 653
    .line 654
    .line 655
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 656
    .line 657
    invoke-virtual {v1, v12}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 658
    .line 659
    .line 660
    goto :goto_1b

    .line 661
    :cond_2a
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 662
    .line 663
    sget v11, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 664
    .line 665
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 666
    .line 667
    invoke-virtual {v1, v11, v15}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 668
    .line 669
    .line 670
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 671
    .line 672
    invoke-virtual {v1, v6}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 673
    .line 674
    .line 675
    :goto_1b
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 676
    .line 677
    iget-boolean v11, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->k:Z

    .line 678
    .line 679
    invoke-virtual {v1, v11, v13}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 680
    .line 681
    .line 682
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 683
    .line 684
    new-instance v11, Lcom/mycompany/app/setting/SettingListAdapter$3;

    .line 685
    .line 686
    invoke-direct {v11, v0}, Lcom/mycompany/app/setting/SettingListAdapter$3;-><init>(Lcom/mycompany/app/setting/SettingListAdapter;)V

    .line 687
    .line 688
    .line 689
    invoke-virtual {v1, v11}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 690
    .line 691
    .line 692
    :cond_2b
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 693
    .line 694
    if-eqz v1, :cond_2d

    .line 695
    .line 696
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 697
    .line 698
    .line 699
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 700
    .line 701
    if-eqz v1, :cond_2c

    .line 702
    .line 703
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 704
    .line 705
    invoke-virtual {v1, v12}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 706
    .line 707
    .line 708
    goto :goto_1c

    .line 709
    :cond_2c
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 710
    .line 711
    invoke-virtual {v1, v6}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 712
    .line 713
    .line 714
    :goto_1c
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 715
    .line 716
    new-instance v11, Lcom/mycompany/app/setting/SettingListAdapter$4;

    .line 717
    .line 718
    invoke-direct {v11, v0}, Lcom/mycompany/app/setting/SettingListAdapter$4;-><init>(Lcom/mycompany/app/setting/SettingListAdapter;)V

    .line 719
    .line 720
    .line 721
    invoke-virtual {v1, v11}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 722
    .line 723
    .line 724
    :cond_2d
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->C:Lcom/mycompany/app/view/MyButtonCheck;

    .line 725
    .line 726
    if-eqz v1, :cond_2f

    .line 727
    .line 728
    sget-boolean v11, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 729
    .line 730
    if-eqz v11, :cond_2e

    .line 731
    .line 732
    sget v11, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_dark_24:I

    .line 733
    .line 734
    invoke-virtual {v1, v11, v13}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 735
    .line 736
    .line 737
    goto :goto_1d

    .line 738
    :cond_2e
    sget v11, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_black_24:I

    .line 739
    .line 740
    invoke-virtual {v1, v11, v13}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 741
    .line 742
    .line 743
    :goto_1d
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->C:Lcom/mycompany/app/view/MyButtonCheck;

    .line 744
    .line 745
    iget-boolean v11, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->k:Z

    .line 746
    .line 747
    iget-boolean v15, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->n:Z

    .line 748
    .line 749
    invoke-virtual {v1, v11, v15}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 750
    .line 751
    .line 752
    iput-boolean v13, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->n:Z

    .line 753
    .line 754
    :cond_2f
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->E:Landroid/widget/SeekBar;

    .line 755
    .line 756
    if-eqz v1, :cond_33

    .line 757
    .line 758
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 759
    .line 760
    .line 761
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->E:Landroid/widget/SeekBar;

    .line 762
    .line 763
    invoke-virtual {v1, v13}, Landroid/widget/AbsSeekBar;->setSplitTrack(Z)V

    .line 764
    .line 765
    .line 766
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->E:Landroid/widget/SeekBar;

    .line 767
    .line 768
    iget-boolean v11, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->s:Z

    .line 769
    .line 770
    const/4 v15, 0x1

    .line 771
    xor-int/2addr v11, v15

    .line 772
    invoke-virtual {v1, v11}, Landroid/view/View;->setEnabled(Z)V

    .line 773
    .line 774
    .line 775
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->E:Landroid/widget/SeekBar;

    .line 776
    .line 777
    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 778
    .line 779
    .line 780
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->E:Landroid/widget/SeekBar;

    .line 781
    .line 782
    invoke-virtual {v1, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 783
    .line 784
    .line 785
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->E:Landroid/widget/SeekBar;

    .line 786
    .line 787
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$5;

    .line 788
    .line 789
    invoke-direct {v5, v0}, Lcom/mycompany/app/setting/SettingListAdapter$5;-><init>(Lcom/mycompany/app/setting/SettingListAdapter;)V

    .line 790
    .line 791
    .line 792
    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 793
    .line 794
    .line 795
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 796
    .line 797
    if-eqz v1, :cond_31

    .line 798
    .line 799
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 800
    .line 801
    .line 802
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 803
    .line 804
    if-eqz v1, :cond_30

    .line 805
    .line 806
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 807
    .line 808
    invoke-virtual {v1, v12}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 809
    .line 810
    .line 811
    goto :goto_1e

    .line 812
    :cond_30
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 813
    .line 814
    invoke-virtual {v1, v6}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 815
    .line 816
    .line 817
    :goto_1e
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 818
    .line 819
    iget-boolean v5, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->s:Z

    .line 820
    .line 821
    const/4 v15, 0x1

    .line 822
    xor-int/2addr v5, v15

    .line 823
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setEnabled(Z)V

    .line 824
    .line 825
    .line 826
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 827
    .line 828
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$6;

    .line 829
    .line 830
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 831
    .line 832
    .line 833
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 834
    .line 835
    .line 836
    :cond_31
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->G:Lcom/mycompany/app/view/MyButtonImage;

    .line 837
    .line 838
    if-eqz v1, :cond_33

    .line 839
    .line 840
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 841
    .line 842
    .line 843
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 844
    .line 845
    if-eqz v1, :cond_32

    .line 846
    .line 847
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->G:Lcom/mycompany/app/view/MyButtonImage;

    .line 848
    .line 849
    invoke-virtual {v1, v12}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 850
    .line 851
    .line 852
    goto :goto_1f

    .line 853
    :cond_32
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->G:Lcom/mycompany/app/view/MyButtonImage;

    .line 854
    .line 855
    invoke-virtual {v1, v6}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 856
    .line 857
    .line 858
    :goto_1f
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->G:Lcom/mycompany/app/view/MyButtonImage;

    .line 859
    .line 860
    iget-boolean v5, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->s:Z

    .line 861
    .line 862
    const/4 v15, 0x1

    .line 863
    xor-int/2addr v5, v15

    .line 864
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setEnabled(Z)V

    .line 865
    .line 866
    .line 867
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->G:Lcom/mycompany/app/view/MyButtonImage;

    .line 868
    .line 869
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$7;

    .line 870
    .line 871
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 872
    .line 873
    .line 874
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 875
    .line 876
    .line 877
    :cond_33
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->H:Lcom/mycompany/app/view/MyButtonImage;

    .line 878
    .line 879
    if-eqz v1, :cond_35

    .line 880
    .line 881
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 882
    .line 883
    .line 884
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 885
    .line 886
    if-eqz v1, :cond_34

    .line 887
    .line 888
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->H:Lcom/mycompany/app/view/MyButtonImage;

    .line 889
    .line 890
    invoke-virtual {v1, v12}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 891
    .line 892
    .line 893
    goto :goto_20

    .line 894
    :cond_34
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->H:Lcom/mycompany/app/view/MyButtonImage;

    .line 895
    .line 896
    invoke-virtual {v1, v6}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 897
    .line 898
    .line 899
    :goto_20
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->H:Lcom/mycompany/app/view/MyButtonImage;

    .line 900
    .line 901
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$8;

    .line 902
    .line 903
    invoke-direct {v5, v0}, Lcom/mycompany/app/setting/SettingListAdapter$8;-><init>(Lcom/mycompany/app/setting/SettingListAdapter;)V

    .line 904
    .line 905
    .line 906
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 907
    .line 908
    .line 909
    :cond_35
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 910
    .line 911
    if-eqz v1, :cond_38

    .line 912
    .line 913
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 914
    .line 915
    .line 916
    iget v1, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->z:I

    .line 917
    .line 918
    if-eqz v1, :cond_36

    .line 919
    .line 920
    iget-object v5, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 921
    .line 922
    invoke-virtual {v5, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 923
    .line 924
    .line 925
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 926
    .line 927
    invoke-virtual {v1, v13}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 928
    .line 929
    .line 930
    goto :goto_21

    .line 931
    :cond_36
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 932
    .line 933
    invoke-virtual {v1, v14}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 934
    .line 935
    .line 936
    :goto_21
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 937
    .line 938
    if-eqz v1, :cond_37

    .line 939
    .line 940
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 941
    .line 942
    invoke-virtual {v1, v12}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 943
    .line 944
    .line 945
    goto :goto_22

    .line 946
    :cond_37
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 947
    .line 948
    invoke-virtual {v1, v6}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 949
    .line 950
    .line 951
    :goto_22
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 952
    .line 953
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$9;

    .line 954
    .line 955
    invoke-direct {v5, v0}, Lcom/mycompany/app/setting/SettingListAdapter$9;-><init>(Lcom/mycompany/app/setting/SettingListAdapter;)V

    .line 956
    .line 957
    .line 958
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 959
    .line 960
    .line 961
    :cond_38
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->J:Lcom/mycompany/app/view/MyRoundImage;

    .line 962
    .line 963
    if-eqz v1, :cond_3c

    .line 964
    .line 965
    if-nez v4, :cond_39

    .line 966
    .line 967
    goto :goto_23

    .line 968
    :cond_39
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 969
    .line 970
    .line 971
    move-result-object v5

    .line 972
    invoke-static {v5, v4}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 973
    .line 974
    .line 975
    move-result-object v5

    .line 976
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 977
    .line 978
    .line 979
    move-result v7

    .line 980
    int-to-float v7, v7

    .line 981
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 982
    .line 983
    .line 984
    move-result v11

    .line 985
    int-to-float v11, v11

    .line 986
    div-float/2addr v7, v11

    .line 987
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 988
    .line 989
    .line 990
    move-result-object v7

    .line 991
    invoke-virtual {v1, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 992
    .line 993
    .line 994
    new-instance v7, Lcom/mycompany/app/setting/SettingListAdapter$11;

    .line 995
    .line 996
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 997
    .line 998
    .line 999
    invoke-virtual {v1, v7}, Lcom/mycompany/app/view/MyRoundImage;->setListener(Lcom/mycompany/app/image/ImageSizeListener;)V

    .line 1000
    .line 1001
    .line 1002
    iget-object v7, v0, Lcom/mycompany/app/setting/SettingListAdapter;->j:Lcom/mycompany/app/view/GlideRequests;

    .line 1003
    .line 1004
    if-eqz v7, :cond_3a

    .line 1005
    .line 1006
    invoke-virtual {v7, v5}, Lcom/mycompany/app/view/GlideRequests;->r(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v5

    .line 1010
    sget-object v7, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 1011
    .line 1012
    invoke-virtual {v5, v7}, Lcom/bumptech/glide/request/BaseRequestOptions;->e(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v5

    .line 1016
    check-cast v5, Lcom/bumptech/glide/RequestBuilder;

    .line 1017
    .line 1018
    invoke-virtual {v5, v1}, Lcom/bumptech/glide/RequestBuilder;->E(Landroid/widget/ImageView;)V

    .line 1019
    .line 1020
    .line 1021
    goto :goto_23

    .line 1022
    :cond_3a
    iget-object v7, v0, Lcom/mycompany/app/setting/SettingListAdapter;->d:Lcom/mycompany/app/main/MainActivity;

    .line 1023
    .line 1024
    if-nez v7, :cond_3b

    .line 1025
    .line 1026
    goto :goto_23

    .line 1027
    :cond_3b
    new-instance v11, Lcom/mycompany/app/setting/SettingListAdapter$12;

    .line 1028
    .line 1029
    invoke-direct {v11, v0, v5, v1}, Lcom/mycompany/app/setting/SettingListAdapter$12;-><init>(Lcom/mycompany/app/setting/SettingListAdapter;Landroid/graphics/drawable/Drawable;Lcom/mycompany/app/view/MyRoundImage;)V

    .line 1030
    .line 1031
    .line 1032
    invoke-virtual {v7, v11}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 1033
    .line 1034
    .line 1035
    :cond_3c
    :goto_23
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->M:Landroid/view/View;

    .line 1036
    .line 1037
    if-eqz v1, :cond_3d

    .line 1038
    .line 1039
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1040
    .line 1041
    .line 1042
    :cond_3d
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->K:Lcom/mycompany/app/view/MyButtonView;

    .line 1043
    .line 1044
    if-eqz v1, :cond_3f

    .line 1045
    .line 1046
    if-eqz v8, :cond_3e

    .line 1047
    .line 1048
    move/from16 v4, v16

    .line 1049
    .line 1050
    goto :goto_24

    .line 1051
    :cond_3e
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1052
    .line 1053
    :goto_24
    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1054
    .line 1055
    .line 1056
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->K:Lcom/mycompany/app/view/MyButtonView;

    .line 1057
    .line 1058
    iget v4, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->x:I

    .line 1059
    .line 1060
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonView;->setBgNorColor(I)V

    .line 1061
    .line 1062
    .line 1063
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->K:Lcom/mycompany/app/view/MyButtonView;

    .line 1064
    .line 1065
    sget v4, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 1066
    .line 1067
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonView;->d(I)V

    .line 1068
    .line 1069
    .line 1070
    :cond_3f
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 1071
    .line 1072
    if-eqz v1, :cond_41

    .line 1073
    .line 1074
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1075
    .line 1076
    .line 1077
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 1078
    .line 1079
    if-eqz v1, :cond_40

    .line 1080
    .line 1081
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 1082
    .line 1083
    invoke-virtual {v1, v12}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 1084
    .line 1085
    .line 1086
    goto :goto_25

    .line 1087
    :cond_40
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 1088
    .line 1089
    invoke-virtual {v1, v6}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 1090
    .line 1091
    .line 1092
    :goto_25
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 1093
    .line 1094
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$10;

    .line 1095
    .line 1096
    invoke-direct {v4, v0}, Lcom/mycompany/app/setting/SettingListAdapter$10;-><init>(Lcom/mycompany/app/setting/SettingListAdapter;)V

    .line 1097
    .line 1098
    .line 1099
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1100
    .line 1101
    .line 1102
    :cond_41
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1103
    .line 1104
    const v4, -0x50506

    .line 1105
    .line 1106
    .line 1107
    const v5, -0x3e3e3f

    .line 1108
    .line 1109
    .line 1110
    const/high16 v6, -0x1000000

    .line 1111
    .line 1112
    if-eqz v1, :cond_45

    .line 1113
    .line 1114
    iget-boolean v1, v0, Lcom/mycompany/app/setting/SettingListAdapter;->i:Z

    .line 1115
    .line 1116
    if-eqz v1, :cond_43

    .line 1117
    .line 1118
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1119
    .line 1120
    .line 1121
    move-result v1

    .line 1122
    if-nez v1, :cond_43

    .line 1123
    .line 1124
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1125
    .line 1126
    sget-boolean v7, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 1127
    .line 1128
    if-eqz v7, :cond_42

    .line 1129
    .line 1130
    move v7, v5

    .line 1131
    goto :goto_26

    .line 1132
    :cond_42
    move v7, v6

    .line 1133
    :goto_26
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1134
    .line 1135
    .line 1136
    goto :goto_28

    .line 1137
    :cond_43
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1138
    .line 1139
    sget-boolean v7, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 1140
    .line 1141
    if-eqz v7, :cond_44

    .line 1142
    .line 1143
    move v7, v4

    .line 1144
    goto :goto_27

    .line 1145
    :cond_44
    move v7, v6

    .line 1146
    :goto_27
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1147
    .line 1148
    .line 1149
    :cond_45
    :goto_28
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1150
    .line 1151
    const v7, -0x9e9e9f

    .line 1152
    .line 1153
    .line 1154
    if-eqz v1, :cond_4c

    .line 1155
    .line 1156
    iget-boolean v1, v0, Lcom/mycompany/app/setting/SettingListAdapter;->i:Z

    .line 1157
    .line 1158
    if-eqz v1, :cond_47

    .line 1159
    .line 1160
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1161
    .line 1162
    .line 1163
    move-result v1

    .line 1164
    if-nez v1, :cond_47

    .line 1165
    .line 1166
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1167
    .line 1168
    sget-boolean v8, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 1169
    .line 1170
    if-eqz v8, :cond_46

    .line 1171
    .line 1172
    goto :goto_29

    .line 1173
    :cond_46
    move v5, v7

    .line 1174
    :goto_29
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1175
    .line 1176
    .line 1177
    goto :goto_2c

    .line 1178
    :cond_47
    iget-boolean v1, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->l:Z

    .line 1179
    .line 1180
    if-eqz v1, :cond_48

    .line 1181
    .line 1182
    iget-boolean v1, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->k:Z

    .line 1183
    .line 1184
    if-nez v1, :cond_48

    .line 1185
    .line 1186
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1187
    .line 1188
    const v5, -0xbbcca

    .line 1189
    .line 1190
    .line 1191
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1192
    .line 1193
    .line 1194
    goto :goto_2c

    .line 1195
    :cond_48
    iget-boolean v1, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->m:Z

    .line 1196
    .line 1197
    if-eqz v1, :cond_4a

    .line 1198
    .line 1199
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1200
    .line 1201
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 1202
    .line 1203
    if-eqz v5, :cond_49

    .line 1204
    .line 1205
    move v5, v4

    .line 1206
    goto :goto_2a

    .line 1207
    :cond_49
    move v5, v6

    .line 1208
    :goto_2a
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1209
    .line 1210
    .line 1211
    goto :goto_2c

    .line 1212
    :cond_4a
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1213
    .line 1214
    sget-boolean v8, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 1215
    .line 1216
    if-eqz v8, :cond_4b

    .line 1217
    .line 1218
    goto :goto_2b

    .line 1219
    :cond_4b
    move v5, v7

    .line 1220
    :goto_2b
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1221
    .line 1222
    .line 1223
    :cond_4c
    :goto_2c
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 1224
    .line 1225
    const/16 v5, 0xf

    .line 1226
    .line 1227
    if-eqz v1, :cond_56

    .line 1228
    .line 1229
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyRoundItem;

    .line 1230
    .line 1231
    if-eqz v1, :cond_4f

    .line 1232
    .line 1233
    const/16 v6, 0x13

    .line 1234
    .line 1235
    if-eq v10, v6, :cond_4d

    .line 1236
    .line 1237
    const/16 v6, 0x14

    .line 1238
    .line 1239
    if-eq v10, v6, :cond_4d

    .line 1240
    .line 1241
    const/16 v6, 0x15

    .line 1242
    .line 1243
    if-eq v10, v6, :cond_4d

    .line 1244
    .line 1245
    const/16 v14, 0x16

    .line 1246
    .line 1247
    if-eq v10, v14, :cond_4d

    .line 1248
    .line 1249
    const/16 v14, 0x18

    .line 1250
    .line 1251
    if-ne v10, v14, :cond_4e

    .line 1252
    .line 1253
    :cond_4d
    const/4 v6, 0x0

    .line 1254
    goto :goto_2d

    .line 1255
    :cond_4e
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 1256
    .line 1257
    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1258
    .line 1259
    .line 1260
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyRoundItem;

    .line 1261
    .line 1262
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyRoundItem;->c()V

    .line 1263
    .line 1264
    .line 1265
    goto :goto_2e

    .line 1266
    :goto_2d
    invoke-virtual {v1, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1267
    .line 1268
    .line 1269
    :cond_4f
    :goto_2e
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1270
    .line 1271
    if-eqz v1, :cond_52

    .line 1272
    .line 1273
    const/16 v6, 0xa

    .line 1274
    .line 1275
    if-eq v10, v6, :cond_51

    .line 1276
    .line 1277
    if-ne v10, v5, :cond_50

    .line 1278
    .line 1279
    goto :goto_2f

    .line 1280
    :cond_50
    const v4, -0x4e3a0c

    .line 1281
    .line 1282
    .line 1283
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1284
    .line 1285
    .line 1286
    goto :goto_30

    .line 1287
    :cond_51
    :goto_2f
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1288
    .line 1289
    .line 1290
    :cond_52
    :goto_30
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->E:Landroid/widget/SeekBar;

    .line 1291
    .line 1292
    if-eqz v1, :cond_53

    .line 1293
    .line 1294
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v1

    .line 1298
    iget-object v4, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->E:Landroid/widget/SeekBar;

    .line 1299
    .line 1300
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_a:I

    .line 1301
    .line 1302
    invoke-static {v1, v5}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v5

    .line 1306
    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1307
    .line 1308
    .line 1309
    iget-object v4, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->E:Landroid/widget/SeekBar;

    .line 1310
    .line 1311
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_a:I

    .line 1312
    .line 1313
    invoke-static {v1, v5}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v1

    .line 1317
    invoke-virtual {v4, v1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 1318
    .line 1319
    .line 1320
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 1321
    .line 1322
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_dark_24:I

    .line 1323
    .line 1324
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 1325
    .line 1326
    .line 1327
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->G:Lcom/mycompany/app/view/MyButtonImage;

    .line 1328
    .line 1329
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_dark_24:I

    .line 1330
    .line 1331
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 1332
    .line 1333
    .line 1334
    :cond_53
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 1335
    .line 1336
    if-eqz v1, :cond_54

    .line 1337
    .line 1338
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_dark_24:I

    .line 1339
    .line 1340
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 1341
    .line 1342
    .line 1343
    :cond_54
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->H:Lcom/mycompany/app/view/MyButtonImage;

    .line 1344
    .line 1345
    if-eqz v1, :cond_55

    .line 1346
    .line 1347
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_article_dark_24:I

    .line 1348
    .line 1349
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 1350
    .line 1351
    .line 1352
    :cond_55
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 1353
    .line 1354
    if-eqz v1, :cond_60

    .line 1355
    .line 1356
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_verified_user_dark_24:I

    .line 1357
    .line 1358
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 1359
    .line 1360
    .line 1361
    goto/16 :goto_35

    .line 1362
    .line 1363
    :cond_56
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyRoundItem;

    .line 1364
    .line 1365
    if-eqz v1, :cond_59

    .line 1366
    .line 1367
    const/16 v4, 0x13

    .line 1368
    .line 1369
    if-eq v10, v4, :cond_57

    .line 1370
    .line 1371
    const/16 v4, 0x14

    .line 1372
    .line 1373
    if-eq v10, v4, :cond_57

    .line 1374
    .line 1375
    const/16 v4, 0x15

    .line 1376
    .line 1377
    if-eq v10, v4, :cond_57

    .line 1378
    .line 1379
    const/16 v14, 0x16

    .line 1380
    .line 1381
    if-eq v10, v14, :cond_57

    .line 1382
    .line 1383
    const/16 v14, 0x18

    .line 1384
    .line 1385
    if-ne v10, v14, :cond_58

    .line 1386
    .line 1387
    :cond_57
    const/4 v4, 0x0

    .line 1388
    goto :goto_31

    .line 1389
    :cond_58
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 1390
    .line 1391
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1392
    .line 1393
    .line 1394
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyRoundItem;

    .line 1395
    .line 1396
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyRoundItem;->c()V

    .line 1397
    .line 1398
    .line 1399
    goto :goto_32

    .line 1400
    :goto_31
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1401
    .line 1402
    .line 1403
    :cond_59
    :goto_32
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1404
    .line 1405
    if-eqz v1, :cond_5c

    .line 1406
    .line 1407
    const/16 v4, 0xa

    .line 1408
    .line 1409
    if-eq v10, v4, :cond_5b

    .line 1410
    .line 1411
    if-ne v10, v5, :cond_5a

    .line 1412
    .line 1413
    goto :goto_33

    .line 1414
    :cond_5a
    const v4, -0xc0ae4b

    .line 1415
    .line 1416
    .line 1417
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1418
    .line 1419
    .line 1420
    goto :goto_34

    .line 1421
    :cond_5b
    :goto_33
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1422
    .line 1423
    .line 1424
    :cond_5c
    :goto_34
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->E:Landroid/widget/SeekBar;

    .line 1425
    .line 1426
    if-eqz v1, :cond_5d

    .line 1427
    .line 1428
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1429
    .line 1430
    .line 1431
    move-result-object v1

    .line 1432
    iget-object v4, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->E:Landroid/widget/SeekBar;

    .line 1433
    .line 1434
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_a:I

    .line 1435
    .line 1436
    invoke-static {v1, v5}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 1437
    .line 1438
    .line 1439
    move-result-object v5

    .line 1440
    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1441
    .line 1442
    .line 1443
    iget-object v4, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->E:Landroid/widget/SeekBar;

    .line 1444
    .line 1445
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_a:I

    .line 1446
    .line 1447
    invoke-static {v1, v5}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 1448
    .line 1449
    .line 1450
    move-result-object v1

    .line 1451
    invoke-virtual {v4, v1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 1452
    .line 1453
    .line 1454
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 1455
    .line 1456
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_black_24:I

    .line 1457
    .line 1458
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 1459
    .line 1460
    .line 1461
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->G:Lcom/mycompany/app/view/MyButtonImage;

    .line 1462
    .line 1463
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_black_24:I

    .line 1464
    .line 1465
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 1466
    .line 1467
    .line 1468
    :cond_5d
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 1469
    .line 1470
    if-eqz v1, :cond_5e

    .line 1471
    .line 1472
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 1473
    .line 1474
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 1475
    .line 1476
    .line 1477
    :cond_5e
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->H:Lcom/mycompany/app/view/MyButtonImage;

    .line 1478
    .line 1479
    if-eqz v1, :cond_5f

    .line 1480
    .line 1481
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_article_black_24:I

    .line 1482
    .line 1483
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 1484
    .line 1485
    .line 1486
    :cond_5f
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 1487
    .line 1488
    if-eqz v1, :cond_60

    .line 1489
    .line 1490
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_verified_user_black_24:I

    .line 1491
    .line 1492
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 1493
    .line 1494
    .line 1495
    :cond_60
    :goto_35
    iget-boolean v1, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->y:Z

    .line 1496
    .line 1497
    if-eqz v1, :cond_63

    .line 1498
    .line 1499
    iput-boolean v13, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->y:Z

    .line 1500
    .line 1501
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyRoundItem;

    .line 1502
    .line 1503
    if-eqz v1, :cond_63

    .line 1504
    .line 1505
    iget-boolean v2, v1, Lcom/mycompany/app/view/MyRoundItem;->s:Z

    .line 1506
    .line 1507
    if-eqz v2, :cond_61

    .line 1508
    .line 1509
    goto :goto_37

    .line 1510
    :cond_61
    const/4 v15, 0x1

    .line 1511
    iput-boolean v15, v1, Lcom/mycompany/app/view/MyRoundItem;->s:Z

    .line 1512
    .line 1513
    iput-boolean v13, v1, Lcom/mycompany/app/view/MyRoundItem;->t:Z

    .line 1514
    .line 1515
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 1516
    .line 1517
    if-eqz v2, :cond_62

    .line 1518
    .line 1519
    goto :goto_36

    .line 1520
    :cond_62
    const v7, -0x595616

    .line 1521
    .line 1522
    .line 1523
    :goto_36
    iput v7, v1, Lcom/mycompany/app/view/MyRoundItem;->v:I

    .line 1524
    .line 1525
    iput v13, v1, Lcom/mycompany/app/view/MyRoundItem;->w:I

    .line 1526
    .line 1527
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1528
    .line 1529
    .line 1530
    move-result-wide v2

    .line 1531
    iput-wide v2, v1, Lcom/mycompany/app/view/MyRoundItem;->u:J

    .line 1532
    .line 1533
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1534
    .line 1535
    .line 1536
    move-result-object v2

    .line 1537
    iget-object v1, v1, Lcom/mycompany/app/view/MyRoundItem;->x:Ljava/lang/Runnable;

    .line 1538
    .line 1539
    invoke-static {v2, v1}, Lcom/mycompany/app/main/MainApp;->N(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 1540
    .line 1541
    .line 1542
    :cond_63
    :goto_37
    return-void
.end method

.method public final o(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 16

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    const/16 v4, 0x19

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    const/4 v6, -0x2

    .line 15
    const/4 v7, -0x1

    .line 16
    if-eq v0, v5, :cond_19

    .line 17
    .line 18
    const/4 v8, 0x2

    .line 19
    if-eq v0, v8, :cond_19

    .line 20
    .line 21
    if-ne v0, v4, :cond_1

    .line 22
    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_1
    const/4 v4, 0x3

    .line 26
    const/16 v8, 0x15

    .line 27
    .line 28
    const/16 v9, 0x10

    .line 29
    .line 30
    const/high16 v10, 0x41800000    # 16.0f

    .line 31
    .line 32
    if-ne v0, v4, :cond_2

    .line 33
    .line 34
    new-instance v0, Lcom/mycompany/app/view/MyRoundItem;

    .line 35
    .line 36
    invoke-direct {v0, v1}, Lcom/mycompany/app/view/MyRoundItem;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyRoundItem;->a(I)V

    .line 42
    .line 43
    .line 44
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 45
    .line 46
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 50
    .line 51
    .line 52
    sget v3, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 55
    .line 56
    .line 57
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 58
    .line 59
    invoke-direct {v3, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    .line 64
    .line 65
    new-instance v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 66
    .line 67
    invoke-direct {v3, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    .line 69
    .line 70
    sget v4, Lnet/kaki87/soul2/testing/R$id;->set_title_value:I

    .line 71
    .line 72
    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v5, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 76
    .line 77
    .line 78
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 79
    .line 80
    invoke-direct {v11, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v11, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v1, v2, v5, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-static {v7, v6, v9, v4}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    sget v4, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 98
    .line 99
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    .line 104
    .line 105
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 106
    .line 107
    invoke-direct {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 108
    .line 109
    .line 110
    iput-object v0, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyRoundItem;

    .line 111
    .line 112
    iput-object v3, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 113
    .line 114
    iput-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 115
    .line 116
    return-object v2

    .line 117
    :cond_2
    const/4 v11, 0x4

    .line 118
    const/high16 v12, 0x41600000    # 14.0f

    .line 119
    .line 120
    if-ne v0, v11, :cond_3

    .line 121
    .line 122
    new-instance v0, Lcom/mycompany/app/view/MyRoundItem;

    .line 123
    .line 124
    invoke-direct {v0, v1}, Lcom/mycompany/app/view/MyRoundItem;-><init>(Landroid/content/Context;)V

    .line 125
    .line 126
    .line 127
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 128
    .line 129
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyRoundItem;->a(I)V

    .line 130
    .line 131
    .line 132
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 133
    .line 134
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 138
    .line 139
    .line 140
    sget v3, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 141
    .line 142
    invoke-virtual {v0, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 143
    .line 144
    .line 145
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 146
    .line 147
    invoke-direct {v3, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    .line 152
    .line 153
    invoke-static {v1, v2, v5, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 157
    invoke-virtual {v0, v1, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 158
    .line 159
    .line 160
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 161
    .line 162
    invoke-direct {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 163
    .line 164
    .line 165
    iput-object v0, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyRoundItem;

    .line 166
    .line 167
    iput-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 168
    .line 169
    return-object v2

    .line 170
    :cond_3
    const/4 v11, 0x5

    .line 171
    const/high16 v13, 0x41a00000    # 20.0f

    .line 172
    .line 173
    const/16 v14, 0xf

    .line 174
    .line 175
    const/4 v15, 0x0

    .line 176
    if-ne v0, v11, :cond_4

    .line 177
    .line 178
    new-instance v0, Lcom/mycompany/app/view/MyRoundItem;

    .line 179
    .line 180
    invoke-direct {v0, v1}, Lcom/mycompany/app/view/MyRoundItem;-><init>(Landroid/content/Context;)V

    .line 181
    .line 182
    .line 183
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 184
    .line 185
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyRoundItem;->a(I)V

    .line 186
    .line 187
    .line 188
    sget v3, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 189
    .line 190
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 191
    .line 192
    invoke-virtual {v0, v3, v15, v4, v15}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 193
    .line 194
    .line 195
    sget v3, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 196
    .line 197
    invoke-virtual {v0, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 198
    .line 199
    .line 200
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 201
    .line 202
    invoke-direct {v3, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    .line 207
    .line 208
    new-instance v3, Landroid/widget/ImageView;

    .line 209
    .line 210
    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 211
    .line 212
    .line 213
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 214
    .line 215
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 216
    .line 217
    .line 218
    invoke-static {v1, v13}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    float-to-int v4, v4

    .line 223
    invoke-static {v4, v4, v14}, Landroidx/work/impl/workers/a;->g(III)Landroid/widget/RelativeLayout$LayoutParams;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    invoke-static {v1, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 228
    .line 229
    .line 230
    move-result v8

    .line 231
    float-to-int v8, v8

    .line 232
    invoke-virtual {v4, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    .line 237
    .line 238
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 239
    .line 240
    invoke-direct {v4, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 241
    .line 242
    .line 243
    sget v1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 244
    .line 245
    invoke-virtual {v4, v1, v15, v1, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 246
    .line 247
    .line 248
    invoke-static {v4, v5, v10, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->h(Landroidx/appcompat/widget/AppCompatTextView;IFII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-virtual {v1, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 253
    .line 254
    .line 255
    sget v2, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 256
    .line 257
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    .line 262
    .line 263
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 264
    .line 265
    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 266
    .line 267
    .line 268
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyRoundItem;

    .line 269
    .line 270
    iput-object v3, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->w:Landroid/widget/ImageView;

    .line 271
    .line 272
    iput-object v4, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 273
    .line 274
    return-object v1

    .line 275
    :cond_4
    const/4 v11, 0x6

    .line 276
    if-ne v0, v11, :cond_5

    .line 277
    .line 278
    new-instance v0, Lcom/mycompany/app/view/MyRoundItem;

    .line 279
    .line 280
    invoke-direct {v0, v1}, Lcom/mycompany/app/view/MyRoundItem;-><init>(Landroid/content/Context;)V

    .line 281
    .line 282
    .line 283
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 284
    .line 285
    invoke-virtual {v0, v11}, Lcom/mycompany/app/view/MyRoundItem;->a(I)V

    .line 286
    .line 287
    .line 288
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 289
    .line 290
    sget v13, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 291
    .line 292
    invoke-virtual {v0, v11, v15, v13, v15}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 293
    .line 294
    .line 295
    sget v11, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 296
    .line 297
    invoke-virtual {v0, v11}, Landroid/view/View;->setMinimumHeight(I)V

    .line 298
    .line 299
    .line 300
    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    .line 301
    .line 302
    invoke-direct {v11, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    .line 307
    .line 308
    new-instance v11, Lcom/mycompany/app/view/MySwitchView;

    .line 309
    .line 310
    invoke-direct {v11, v1}, Lcom/mycompany/app/view/MySwitchView;-><init>(Landroid/content/Context;)V

    .line 311
    .line 312
    .line 313
    sget v13, Lnet/kaki87/soul2/testing/R$id;->set_switch_sw:I

    .line 314
    .line 315
    invoke-virtual {v11, v13}, Landroid/view/View;->setId(I)V

    .line 316
    .line 317
    .line 318
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 319
    .line 320
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 321
    .line 322
    invoke-direct {v4, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v4, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0, v11, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    .line 333
    .line 334
    new-instance v3, Landroid/widget/RelativeLayout;

    .line 335
    .line 336
    invoke-direct {v3, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 337
    .line 338
    .line 339
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 340
    .line 341
    invoke-virtual {v3, v15, v4, v15, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 342
    .line 343
    .line 344
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 345
    .line 346
    invoke-direct {v4, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v4, v9, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v4, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 353
    .line 354
    .line 355
    sget v8, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 356
    .line 357
    invoke-virtual {v4, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    .line 362
    .line 363
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 364
    .line 365
    invoke-direct {v4, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 366
    .line 367
    .line 368
    sget v8, Lnet/kaki87/soul2/testing/R$id;->set_switch_title:I

    .line 369
    .line 370
    invoke-virtual {v4, v8}, Landroid/view/View;->setId(I)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v4, v5, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v3, v4, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 377
    .line 378
    .line 379
    new-instance v9, Landroidx/appcompat/widget/AppCompatTextView;

    .line 380
    .line 381
    invoke-direct {v9, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v9, v5, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 385
    .line 386
    .line 387
    const/16 v1, 0x8

    .line 388
    .line 389
    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 390
    .line 391
    .line 392
    const/4 v1, 0x3

    .line 393
    invoke-static {v7, v6, v1, v8}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    sget v2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 398
    .line 399
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 400
    .line 401
    invoke-virtual {v3, v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    .line 403
    .line 404
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 405
    .line 406
    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 407
    .line 408
    .line 409
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyRoundItem;

    .line 410
    .line 411
    iput-object v11, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->z:Lcom/mycompany/app/view/MySwitchView;

    .line 412
    .line 413
    iput-object v4, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 414
    .line 415
    iput-object v9, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 416
    .line 417
    return-object v1

    .line 418
    :cond_5
    const/4 v3, 0x7

    .line 419
    if-ne v0, v3, :cond_6

    .line 420
    .line 421
    new-instance v0, Lcom/mycompany/app/view/MyRoundItem;

    .line 422
    .line 423
    invoke-direct {v0, v1}, Lcom/mycompany/app/view/MyRoundItem;-><init>(Landroid/content/Context;)V

    .line 424
    .line 425
    .line 426
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 427
    .line 428
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyRoundItem;->a(I)V

    .line 429
    .line 430
    .line 431
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 432
    .line 433
    sget v4, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 434
    .line 435
    invoke-virtual {v0, v3, v15, v4, v15}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 436
    .line 437
    .line 438
    sget v3, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 439
    .line 440
    invoke-virtual {v0, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 441
    .line 442
    .line 443
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 444
    .line 445
    invoke-direct {v3, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    .line 450
    .line 451
    new-instance v3, Lcom/mycompany/app/view/MyButtonCheck;

    .line 452
    .line 453
    invoke-direct {v3, v1}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 454
    .line 455
    .line 456
    sget v4, Lnet/kaki87/soul2/testing/R$id;->set_check_check:I

    .line 457
    .line 458
    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 459
    .line 460
    .line 461
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 462
    .line 463
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 464
    .line 465
    invoke-direct {v11, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v11, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v11, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v0, v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 475
    .line 476
    .line 477
    new-instance v8, Landroid/widget/RelativeLayout;

    .line 478
    .line 479
    invoke-direct {v8, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 480
    .line 481
    .line 482
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 483
    .line 484
    invoke-virtual {v8, v15, v11, v15, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 485
    .line 486
    .line 487
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 488
    .line 489
    invoke-direct {v11, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v11, v9, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v11, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 496
    .line 497
    .line 498
    sget v4, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 499
    .line 500
    invoke-virtual {v11, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v0, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    .line 505
    .line 506
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 507
    .line 508
    invoke-direct {v4, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 509
    .line 510
    .line 511
    sget v9, Lnet/kaki87/soul2/testing/R$id;->set_check_title:I

    .line 512
    .line 513
    invoke-virtual {v4, v9}, Landroid/view/View;->setId(I)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v4, v5, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v8, v4, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 520
    .line 521
    .line 522
    new-instance v10, Landroidx/appcompat/widget/AppCompatTextView;

    .line 523
    .line 524
    invoke-direct {v10, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v10, v5, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 528
    .line 529
    .line 530
    const/16 v1, 0x8

    .line 531
    .line 532
    invoke-virtual {v10, v1}, Landroid/view/View;->setVisibility(I)V

    .line 533
    .line 534
    .line 535
    const/4 v1, 0x3

    .line 536
    invoke-static {v7, v6, v1, v9}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    sget v2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 541
    .line 542
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 543
    .line 544
    invoke-virtual {v8, v10, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 545
    .line 546
    .line 547
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 548
    .line 549
    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 550
    .line 551
    .line 552
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyRoundItem;

    .line 553
    .line 554
    iput-object v3, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 555
    .line 556
    iput-object v4, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 557
    .line 558
    iput-object v10, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 559
    .line 560
    return-object v1

    .line 561
    :cond_6
    const/16 v3, 0x8

    .line 562
    .line 563
    if-ne v0, v3, :cond_7

    .line 564
    .line 565
    new-instance v0, Lcom/mycompany/app/view/MyRoundItem;

    .line 566
    .line 567
    invoke-direct {v0, v1}, Lcom/mycompany/app/view/MyRoundItem;-><init>(Landroid/content/Context;)V

    .line 568
    .line 569
    .line 570
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 571
    .line 572
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyRoundItem;->a(I)V

    .line 573
    .line 574
    .line 575
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 576
    .line 577
    sget v4, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 578
    .line 579
    invoke-virtual {v0, v3, v15, v4, v15}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 580
    .line 581
    .line 582
    sget v3, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 583
    .line 584
    invoke-virtual {v0, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 585
    .line 586
    .line 587
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 588
    .line 589
    invoke-direct {v3, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 593
    .line 594
    .line 595
    new-instance v3, Lcom/mycompany/app/view/MyButtonCheck;

    .line 596
    .line 597
    invoke-direct {v3, v1}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 598
    .line 599
    .line 600
    sget v4, Lnet/kaki87/soul2/testing/R$id;->set_filter_check:I

    .line 601
    .line 602
    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 603
    .line 604
    .line 605
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 606
    .line 607
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 608
    .line 609
    invoke-direct {v11, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 610
    .line 611
    .line 612
    invoke-virtual {v11, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {v11, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 616
    .line 617
    .line 618
    invoke-virtual {v0, v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 619
    .line 620
    .line 621
    new-instance v8, Lcom/mycompany/app/view/MyButtonImage;

    .line 622
    .line 623
    invoke-direct {v8, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 624
    .line 625
    .line 626
    sget v11, Lnet/kaki87/soul2/testing/R$id;->set_filter_home:I

    .line 627
    .line 628
    invoke-virtual {v8, v11}, Landroid/view/View;->setId(I)V

    .line 629
    .line 630
    .line 631
    invoke-static {v1, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 632
    .line 633
    .line 634
    move-result v13

    .line 635
    float-to-int v13, v13

    .line 636
    invoke-virtual {v8, v13, v13, v13, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 637
    .line 638
    .line 639
    sget-object v13, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 640
    .line 641
    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 642
    .line 643
    .line 644
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 645
    .line 646
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 647
    .line 648
    invoke-direct {v13, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v13, v9, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v0, v8, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 658
    .line 659
    .line 660
    new-instance v4, Landroid/widget/RelativeLayout;

    .line 661
    .line 662
    invoke-direct {v4, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 663
    .line 664
    .line 665
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 666
    .line 667
    invoke-virtual {v4, v15, v12, v15, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 668
    .line 669
    .line 670
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 671
    .line 672
    invoke-direct {v12, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 673
    .line 674
    .line 675
    invoke-virtual {v12, v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {v12, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 679
    .line 680
    .line 681
    invoke-virtual {v0, v4, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 682
    .line 683
    .line 684
    new-instance v9, Landroidx/appcompat/widget/AppCompatTextView;

    .line 685
    .line 686
    invoke-direct {v9, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 687
    .line 688
    .line 689
    sget v11, Lnet/kaki87/soul2/testing/R$id;->set_filter_title:I

    .line 690
    .line 691
    invoke-virtual {v9, v11}, Landroid/view/View;->setId(I)V

    .line 692
    .line 693
    .line 694
    invoke-virtual {v9, v5, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 695
    .line 696
    .line 697
    invoke-virtual {v4, v9, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 698
    .line 699
    .line 700
    new-instance v10, Landroidx/appcompat/widget/AppCompatTextView;

    .line 701
    .line 702
    invoke-direct {v10, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 703
    .line 704
    .line 705
    const/high16 v1, 0x41600000    # 14.0f

    .line 706
    .line 707
    invoke-virtual {v10, v5, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 708
    .line 709
    .line 710
    const/16 v1, 0x8

    .line 711
    .line 712
    invoke-virtual {v10, v1}, Landroid/view/View;->setVisibility(I)V

    .line 713
    .line 714
    .line 715
    const/4 v1, 0x3

    .line 716
    invoke-static {v7, v6, v1, v11}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 717
    .line 718
    .line 719
    move-result-object v1

    .line 720
    sget v2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 721
    .line 722
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 723
    .line 724
    invoke-virtual {v4, v10, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 725
    .line 726
    .line 727
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 728
    .line 729
    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 730
    .line 731
    .line 732
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyRoundItem;

    .line 733
    .line 734
    iput-object v3, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 735
    .line 736
    iput-object v8, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 737
    .line 738
    iput-object v9, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 739
    .line 740
    iput-object v10, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 741
    .line 742
    return-object v1

    .line 743
    :cond_7
    const/16 v3, 0x9

    .line 744
    .line 745
    if-ne v0, v3, :cond_8

    .line 746
    .line 747
    new-instance v0, Lcom/mycompany/app/view/MyRoundItem;

    .line 748
    .line 749
    invoke-direct {v0, v1}, Lcom/mycompany/app/view/MyRoundItem;-><init>(Landroid/content/Context;)V

    .line 750
    .line 751
    .line 752
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 753
    .line 754
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyRoundItem;->a(I)V

    .line 755
    .line 756
    .line 757
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 758
    .line 759
    invoke-virtual {v0, v3, v15, v3, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 760
    .line 761
    .line 762
    sget v3, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 763
    .line 764
    invoke-virtual {v0, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 765
    .line 766
    .line 767
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 768
    .line 769
    invoke-direct {v3, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 770
    .line 771
    .line 772
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 773
    .line 774
    .line 775
    new-instance v3, Lcom/mycompany/app/view/MyButtonCheck;

    .line 776
    .line 777
    invoke-direct {v3, v1}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 778
    .line 779
    .line 780
    sget v4, Lnet/kaki87/soul2/testing/R$id;->set_select_select:I

    .line 781
    .line 782
    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 783
    .line 784
    .line 785
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 786
    .line 787
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 788
    .line 789
    invoke-direct {v11, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 790
    .line 791
    .line 792
    invoke-virtual {v11, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 793
    .line 794
    .line 795
    invoke-virtual {v11, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 796
    .line 797
    .line 798
    invoke-virtual {v0, v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 799
    .line 800
    .line 801
    new-instance v8, Landroidx/appcompat/widget/AppCompatTextView;

    .line 802
    .line 803
    invoke-direct {v8, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 804
    .line 805
    .line 806
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 807
    .line 808
    invoke-virtual {v8, v15, v1, v15, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 809
    .line 810
    .line 811
    invoke-static {v8, v5, v10, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->h(Landroidx/appcompat/widget/AppCompatTextView;IFII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 812
    .line 813
    .line 814
    move-result-object v1

    .line 815
    invoke-virtual {v1, v9, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 816
    .line 817
    .line 818
    invoke-virtual {v1, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 819
    .line 820
    .line 821
    sget v2, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 822
    .line 823
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 824
    .line 825
    .line 826
    invoke-virtual {v0, v8, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 827
    .line 828
    .line 829
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 830
    .line 831
    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 832
    .line 833
    .line 834
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyRoundItem;

    .line 835
    .line 836
    iput-object v3, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->C:Lcom/mycompany/app/view/MyButtonCheck;

    .line 837
    .line 838
    iput-object v8, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 839
    .line 840
    return-object v1

    .line 841
    :cond_8
    const/16 v3, 0xa

    .line 842
    .line 843
    const v4, 0x800013

    .line 844
    .line 845
    .line 846
    if-ne v0, v3, :cond_9

    .line 847
    .line 848
    new-instance v0, Lcom/mycompany/app/view/MyRoundItem;

    .line 849
    .line 850
    invoke-direct {v0, v1}, Lcom/mycompany/app/view/MyRoundItem;-><init>(Landroid/content/Context;)V

    .line 851
    .line 852
    .line 853
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 854
    .line 855
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyRoundItem;->a(I)V

    .line 856
    .line 857
    .line 858
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 859
    .line 860
    invoke-virtual {v0, v15, v3, v15, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 861
    .line 862
    .line 863
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 864
    .line 865
    invoke-direct {v3, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 866
    .line 867
    .line 868
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 869
    .line 870
    .line 871
    new-instance v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 872
    .line 873
    invoke-direct {v3, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 874
    .line 875
    .line 876
    sget v11, Lnet/kaki87/soul2/testing/R$id;->set_seek_value:I

    .line 877
    .line 878
    invoke-virtual {v3, v11}, Landroid/view/View;->setId(I)V

    .line 879
    .line 880
    .line 881
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 882
    .line 883
    .line 884
    invoke-virtual {v3, v5, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 885
    .line 886
    .line 887
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 888
    .line 889
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 890
    .line 891
    .line 892
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 893
    .line 894
    invoke-direct {v12, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 895
    .line 896
    .line 897
    invoke-virtual {v12, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 898
    .line 899
    .line 900
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 901
    .line 902
    invoke-virtual {v12, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 903
    .line 904
    .line 905
    invoke-virtual {v0, v3, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 906
    .line 907
    .line 908
    new-instance v8, Landroidx/appcompat/widget/AppCompatTextView;

    .line 909
    .line 910
    invoke-direct {v8, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 911
    .line 912
    .line 913
    sget v2, Lnet/kaki87/soul2/testing/R$id;->set_seek_title:I

    .line 914
    .line 915
    invoke-virtual {v8, v2}, Landroid/view/View;->setId(I)V

    .line 916
    .line 917
    .line 918
    invoke-virtual {v8, v5, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 919
    .line 920
    .line 921
    invoke-static {v7, v6, v9, v11}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 922
    .line 923
    .line 924
    move-result-object v5

    .line 925
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 926
    .line 927
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 928
    .line 929
    .line 930
    sget v9, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 931
    .line 932
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 933
    .line 934
    .line 935
    invoke-virtual {v0, v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 936
    .line 937
    .line 938
    new-instance v5, Landroid/widget/FrameLayout;

    .line 939
    .line 940
    invoke-direct {v5, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 941
    .line 942
    .line 943
    const/4 v9, 0x3

    .line 944
    invoke-static {v7, v6, v9, v2}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 945
    .line 946
    .line 947
    move-result-object v2

    .line 948
    invoke-virtual {v0, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 949
    .line 950
    .line 951
    new-instance v2, Lcom/mycompany/app/view/MyButtonImage;

    .line 952
    .line 953
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 954
    .line 955
    .line 956
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 957
    .line 958
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 959
    .line 960
    .line 961
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 962
    .line 963
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 964
    .line 965
    invoke-direct {v10, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 966
    .line 967
    .line 968
    iput v4, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 969
    .line 970
    invoke-virtual {v5, v2, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 971
    .line 972
    .line 973
    new-instance v10, Lcom/mycompany/app/view/MyButtonImage;

    .line 974
    .line 975
    invoke-direct {v10, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 976
    .line 977
    .line 978
    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 979
    .line 980
    .line 981
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 982
    .line 983
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 984
    .line 985
    invoke-direct {v9, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 986
    .line 987
    .line 988
    const v11, 0x800015

    .line 989
    .line 990
    .line 991
    iput v11, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 992
    .line 993
    invoke-virtual {v5, v10, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 994
    .line 995
    .line 996
    new-instance v9, Landroid/widget/SeekBar;

    .line 997
    .line 998
    invoke-direct {v9, v1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 999
    .line 1000
    .line 1001
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1002
    .line 1003
    invoke-direct {v1, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1004
    .line 1005
    .line 1006
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1007
    .line 1008
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 1009
    .line 1010
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1011
    .line 1012
    .line 1013
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 1014
    .line 1015
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 1016
    .line 1017
    .line 1018
    invoke-virtual {v5, v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1019
    .line 1020
    .line 1021
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 1022
    .line 1023
    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1024
    .line 1025
    .line 1026
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyRoundItem;

    .line 1027
    .line 1028
    iput-object v3, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1029
    .line 1030
    iput-object v8, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1031
    .line 1032
    iput-object v2, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 1033
    .line 1034
    iput-object v10, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->G:Lcom/mycompany/app/view/MyButtonImage;

    .line 1035
    .line 1036
    iput-object v9, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->E:Landroid/widget/SeekBar;

    .line 1037
    .line 1038
    return-object v1

    .line 1039
    :cond_9
    const/16 v3, 0xb

    .line 1040
    .line 1041
    if-ne v0, v3, :cond_a

    .line 1042
    .line 1043
    new-instance v0, Lcom/mycompany/app/view/MyRoundItem;

    .line 1044
    .line 1045
    invoke-direct {v0, v1}, Lcom/mycompany/app/view/MyRoundItem;-><init>(Landroid/content/Context;)V

    .line 1046
    .line 1047
    .line 1048
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1049
    .line 1050
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyRoundItem;->a(I)V

    .line 1051
    .line 1052
    .line 1053
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1054
    .line 1055
    invoke-virtual {v0, v3, v15, v15, v15}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1056
    .line 1057
    .line 1058
    sget v3, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 1059
    .line 1060
    invoke-virtual {v0, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1061
    .line 1062
    .line 1063
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 1064
    .line 1065
    invoke-direct {v3, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1069
    .line 1070
    .line 1071
    new-instance v3, Landroid/widget/RelativeLayout;

    .line 1072
    .line 1073
    invoke-direct {v3, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1074
    .line 1075
    .line 1076
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1077
    .line 1078
    invoke-virtual {v3, v15, v4, v15, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1079
    .line 1080
    .line 1081
    invoke-static {v7, v6, v14}, Landroidx/work/impl/workers/a;->g(III)Landroid/widget/RelativeLayout$LayoutParams;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v4

    .line 1085
    const/high16 v9, 0x42c00000    # 96.0f

    .line 1086
    .line 1087
    invoke-static {v1, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 1088
    .line 1089
    .line 1090
    move-result v9

    .line 1091
    float-to-int v9, v9

    .line 1092
    invoke-virtual {v4, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 1093
    .line 1094
    .line 1095
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1096
    .line 1097
    .line 1098
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 1099
    .line 1100
    invoke-direct {v4, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1101
    .line 1102
    .line 1103
    sget v9, Lnet/kaki87/soul2/testing/R$id;->set_lcns_title:I

    .line 1104
    .line 1105
    invoke-virtual {v4, v9}, Landroid/view/View;->setId(I)V

    .line 1106
    .line 1107
    .line 1108
    invoke-virtual {v4, v5, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 1109
    .line 1110
    .line 1111
    invoke-virtual {v3, v4, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1112
    .line 1113
    .line 1114
    new-instance v10, Landroidx/appcompat/widget/AppCompatTextView;

    .line 1115
    .line 1116
    invoke-direct {v10, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1117
    .line 1118
    .line 1119
    sget v11, Lnet/kaki87/soul2/testing/R$id;->set_lcns_value:I

    .line 1120
    .line 1121
    invoke-virtual {v10, v11}, Landroid/view/View;->setId(I)V

    .line 1122
    .line 1123
    .line 1124
    const/high16 v12, 0x41600000    # 14.0f

    .line 1125
    .line 1126
    invoke-virtual {v10, v5, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 1127
    .line 1128
    .line 1129
    const/4 v13, 0x3

    .line 1130
    invoke-static {v7, v6, v13, v9}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v9

    .line 1134
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 1135
    .line 1136
    iput v15, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1137
    .line 1138
    invoke-virtual {v3, v10, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1139
    .line 1140
    .line 1141
    new-instance v9, Landroidx/appcompat/widget/AppCompatTextView;

    .line 1142
    .line 1143
    invoke-direct {v9, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1144
    .line 1145
    .line 1146
    invoke-static {v9, v5, v12, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->h(Landroidx/appcompat/widget/AppCompatTextView;IFII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v2

    .line 1150
    invoke-virtual {v2, v13, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1151
    .line 1152
    .line 1153
    sget v5, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 1154
    .line 1155
    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1156
    .line 1157
    invoke-virtual {v3, v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1158
    .line 1159
    .line 1160
    new-instance v2, Lcom/mycompany/app/view/MyButtonImage;

    .line 1161
    .line 1162
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 1163
    .line 1164
    .line 1165
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 1166
    .line 1167
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1168
    .line 1169
    .line 1170
    invoke-static {v1, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 1171
    .line 1172
    .line 1173
    move-result v5

    .line 1174
    float-to-int v5, v5

    .line 1175
    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 1176
    .line 1177
    .line 1178
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1179
    .line 1180
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 1181
    .line 1182
    invoke-direct {v6, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1183
    .line 1184
    .line 1185
    invoke-virtual {v6, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1186
    .line 1187
    .line 1188
    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1189
    .line 1190
    .line 1191
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 1192
    .line 1193
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 1194
    .line 1195
    .line 1196
    invoke-virtual {v0, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1197
    .line 1198
    .line 1199
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v1

    .line 1203
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 1204
    .line 1205
    .line 1206
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1207
    .line 1208
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 1209
    .line 1210
    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1211
    .line 1212
    .line 1213
    invoke-virtual {v3, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1214
    .line 1215
    .line 1216
    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1217
    .line 1218
    .line 1219
    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1220
    .line 1221
    .line 1222
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 1223
    .line 1224
    invoke-direct {v3, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1225
    .line 1226
    .line 1227
    iput-object v0, v3, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyRoundItem;

    .line 1228
    .line 1229
    iput-object v4, v3, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1230
    .line 1231
    iput-object v10, v3, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1232
    .line 1233
    iput-object v9, v3, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1234
    .line 1235
    iput-object v2, v3, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 1236
    .line 1237
    iput-object v1, v3, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->H:Lcom/mycompany/app/view/MyButtonImage;

    .line 1238
    .line 1239
    return-object v3

    .line 1240
    :cond_a
    const/16 v3, 0xc

    .line 1241
    .line 1242
    if-ne v0, v3, :cond_b

    .line 1243
    .line 1244
    new-instance v0, Lcom/mycompany/app/view/MyRoundItem;

    .line 1245
    .line 1246
    invoke-direct {v0, v1}, Lcom/mycompany/app/view/MyRoundItem;-><init>(Landroid/content/Context;)V

    .line 1247
    .line 1248
    .line 1249
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1250
    .line 1251
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyRoundItem;->a(I)V

    .line 1252
    .line 1253
    .line 1254
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1255
    .line 1256
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1257
    .line 1258
    .line 1259
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 1260
    .line 1261
    .line 1262
    sget v2, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 1263
    .line 1264
    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1265
    .line 1266
    .line 1267
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 1268
    .line 1269
    invoke-direct {v2, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1270
    .line 1271
    .line 1272
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1273
    .line 1274
    .line 1275
    new-instance v2, Lcom/mycompany/app/view/MyRoundImage;

    .line 1276
    .line 1277
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 1278
    .line 1279
    .line 1280
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 1281
    .line 1282
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1283
    .line 1284
    .line 1285
    invoke-virtual {v0, v2, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1286
    .line 1287
    .line 1288
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 1289
    .line 1290
    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1291
    .line 1292
    .line 1293
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyRoundItem;

    .line 1294
    .line 1295
    iput-object v2, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->J:Lcom/mycompany/app/view/MyRoundImage;

    .line 1296
    .line 1297
    return-object v1

    .line 1298
    :cond_b
    const/16 v3, 0xd

    .line 1299
    .line 1300
    if-ne v0, v3, :cond_c

    .line 1301
    .line 1302
    new-instance v0, Lcom/mycompany/app/view/MyRoundItem;

    .line 1303
    .line 1304
    invoke-direct {v0, v1}, Lcom/mycompany/app/view/MyRoundItem;-><init>(Landroid/content/Context;)V

    .line 1305
    .line 1306
    .line 1307
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1308
    .line 1309
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyRoundItem;->a(I)V

    .line 1310
    .line 1311
    .line 1312
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1313
    .line 1314
    sget v4, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 1315
    .line 1316
    invoke-virtual {v0, v3, v15, v4, v15}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1317
    .line 1318
    .line 1319
    sget v3, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 1320
    .line 1321
    invoke-virtual {v0, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1322
    .line 1323
    .line 1324
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 1325
    .line 1326
    invoke-direct {v3, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1327
    .line 1328
    .line 1329
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1330
    .line 1331
    .line 1332
    new-instance v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 1333
    .line 1334
    invoke-direct {v3, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1335
    .line 1336
    .line 1337
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1338
    .line 1339
    invoke-virtual {v3, v15, v2, v15, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1340
    .line 1341
    .line 1342
    invoke-static {v3, v5, v10, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->h(Landroidx/appcompat/widget/AppCompatTextView;IFII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v2

    .line 1346
    invoke-virtual {v2, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1347
    .line 1348
    .line 1349
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 1350
    .line 1351
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 1352
    .line 1353
    .line 1354
    invoke-virtual {v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1355
    .line 1356
    .line 1357
    new-instance v2, Lcom/mycompany/app/view/MyButtonView;

    .line 1358
    .line 1359
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyButtonView;-><init>(Landroid/content/Context;)V

    .line 1360
    .line 1361
    .line 1362
    const/high16 v4, 0x41400000    # 12.0f

    .line 1363
    .line 1364
    invoke-static {v1, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 1365
    .line 1366
    .line 1367
    move-result v1

    .line 1368
    float-to-int v1, v1

    .line 1369
    int-to-float v1, v1

    .line 1370
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyButtonView;->setBgNorRadius(F)V

    .line 1371
    .line 1372
    .line 1373
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1374
    .line 1375
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 1376
    .line 1377
    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1378
    .line 1379
    .line 1380
    invoke-virtual {v1, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1381
    .line 1382
    .line 1383
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1384
    .line 1385
    .line 1386
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1387
    .line 1388
    .line 1389
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 1390
    .line 1391
    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1392
    .line 1393
    .line 1394
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyRoundItem;

    .line 1395
    .line 1396
    iput-object v3, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1397
    .line 1398
    iput-object v2, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->K:Lcom/mycompany/app/view/MyButtonView;

    .line 1399
    .line 1400
    return-object v1

    .line 1401
    :cond_c
    const/16 v3, 0xe

    .line 1402
    .line 1403
    if-ne v0, v3, :cond_d

    .line 1404
    .line 1405
    new-instance v0, Lcom/mycompany/app/view/MyRoundItem;

    .line 1406
    .line 1407
    invoke-direct {v0, v1}, Lcom/mycompany/app/view/MyRoundItem;-><init>(Landroid/content/Context;)V

    .line 1408
    .line 1409
    .line 1410
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1411
    .line 1412
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyRoundItem;->a(I)V

    .line 1413
    .line 1414
    .line 1415
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1416
    .line 1417
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1418
    .line 1419
    .line 1420
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 1421
    .line 1422
    .line 1423
    sget v3, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 1424
    .line 1425
    invoke-virtual {v0, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1426
    .line 1427
    .line 1428
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 1429
    .line 1430
    invoke-direct {v3, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1431
    .line 1432
    .line 1433
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1434
    .line 1435
    .line 1436
    new-instance v3, Landroid/view/View;

    .line 1437
    .line 1438
    invoke-direct {v3, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1439
    .line 1440
    .line 1441
    invoke-static {v5, v5, v8}, Landroidx/work/impl/workers/a;->g(III)Landroid/widget/RelativeLayout$LayoutParams;

    .line 1442
    .line 1443
    .line 1444
    move-result-object v8

    .line 1445
    sget v9, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 1446
    .line 1447
    iput v9, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1448
    .line 1449
    invoke-virtual {v0, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1450
    .line 1451
    .line 1452
    new-instance v8, Landroid/widget/FrameLayout;

    .line 1453
    .line 1454
    invoke-direct {v8, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1455
    .line 1456
    .line 1457
    sget v9, Lnet/kaki87/soul2/testing/R$id;->set_combi_frame:I

    .line 1458
    .line 1459
    invoke-virtual {v8, v9}, Landroid/view/View;->setId(I)V

    .line 1460
    .line 1461
    .line 1462
    invoke-virtual {v0, v8, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1463
    .line 1464
    .line 1465
    new-instance v11, Landroid/widget/ImageView;

    .line 1466
    .line 1467
    invoke-direct {v11, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1468
    .line 1469
    .line 1470
    sget-object v12, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 1471
    .line 1472
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1473
    .line 1474
    .line 1475
    invoke-static {v1, v13}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 1476
    .line 1477
    .line 1478
    move-result v12

    .line 1479
    float-to-int v12, v12

    .line 1480
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 1481
    .line 1482
    invoke-direct {v13, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1483
    .line 1484
    .line 1485
    iput v4, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1486
    .line 1487
    invoke-virtual {v8, v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1488
    .line 1489
    .line 1490
    new-instance v12, Landroidx/appcompat/widget/AppCompatTextView;

    .line 1491
    .line 1492
    invoke-direct {v12, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1493
    .line 1494
    .line 1495
    invoke-virtual {v12, v5, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 1496
    .line 1497
    .line 1498
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 1499
    .line 1500
    invoke-direct {v10, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1501
    .line 1502
    .line 1503
    iput v4, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1504
    .line 1505
    const/high16 v4, 0x42000000    # 32.0f

    .line 1506
    .line 1507
    invoke-static {v1, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 1508
    .line 1509
    .line 1510
    move-result v4

    .line 1511
    float-to-int v4, v4

    .line 1512
    invoke-virtual {v10, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1513
    .line 1514
    .line 1515
    invoke-virtual {v8, v12, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1516
    .line 1517
    .line 1518
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 1519
    .line 1520
    invoke-direct {v4, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1521
    .line 1522
    .line 1523
    const/high16 v1, 0x41600000    # 14.0f

    .line 1524
    .line 1525
    invoke-virtual {v4, v5, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 1526
    .line 1527
    .line 1528
    const/16 v1, 0x8

    .line 1529
    .line 1530
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1531
    .line 1532
    .line 1533
    const/4 v1, 0x3

    .line 1534
    invoke-static {v7, v6, v1, v9}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 1535
    .line 1536
    .line 1537
    move-result-object v1

    .line 1538
    sget v2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 1539
    .line 1540
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1541
    .line 1542
    invoke-virtual {v0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1543
    .line 1544
    .line 1545
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 1546
    .line 1547
    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1548
    .line 1549
    .line 1550
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyRoundItem;

    .line 1551
    .line 1552
    iput-object v12, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1553
    .line 1554
    iput-object v11, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->w:Landroid/widget/ImageView;

    .line 1555
    .line 1556
    iput-object v4, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1557
    .line 1558
    iput-object v3, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 1559
    .line 1560
    return-object v1

    .line 1561
    :cond_d
    const/16 v4, 0x11

    .line 1562
    .line 1563
    if-ne v0, v14, :cond_e

    .line 1564
    .line 1565
    new-instance v0, Lcom/mycompany/app/view/MyRoundItem;

    .line 1566
    .line 1567
    invoke-direct {v0, v1}, Lcom/mycompany/app/view/MyRoundItem;-><init>(Landroid/content/Context;)V

    .line 1568
    .line 1569
    .line 1570
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1571
    .line 1572
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyRoundItem;->a(I)V

    .line 1573
    .line 1574
    .line 1575
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1576
    .line 1577
    invoke-virtual {v0, v3, v15, v3, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 1578
    .line 1579
    .line 1580
    sget v3, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 1581
    .line 1582
    invoke-virtual {v0, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1583
    .line 1584
    .line 1585
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 1586
    .line 1587
    invoke-direct {v3, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1588
    .line 1589
    .line 1590
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1591
    .line 1592
    .line 1593
    new-instance v3, Landroid/widget/FrameLayout;

    .line 1594
    .line 1595
    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1596
    .line 1597
    .line 1598
    sget v11, Lnet/kaki87/soul2/testing/R$id;->set_pay_ficon:I

    .line 1599
    .line 1600
    invoke-virtual {v3, v11}, Landroid/view/View;->setId(I)V

    .line 1601
    .line 1602
    .line 1603
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1604
    .line 1605
    invoke-direct {v12, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1606
    .line 1607
    .line 1608
    invoke-virtual {v12, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1609
    .line 1610
    .line 1611
    invoke-virtual {v0, v3, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1612
    .line 1613
    .line 1614
    new-instance v12, Landroid/widget/ImageView;

    .line 1615
    .line 1616
    invoke-direct {v12, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1617
    .line 1618
    .line 1619
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 1620
    .line 1621
    invoke-virtual {v12, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1622
    .line 1623
    .line 1624
    invoke-static {v1, v13}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 1625
    .line 1626
    .line 1627
    move-result v9

    .line 1628
    float-to-int v9, v9

    .line 1629
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 1630
    .line 1631
    invoke-direct {v13, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1632
    .line 1633
    .line 1634
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1635
    .line 1636
    invoke-virtual {v13, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 1637
    .line 1638
    .line 1639
    invoke-virtual {v3, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1640
    .line 1641
    .line 1642
    new-instance v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 1643
    .line 1644
    invoke-direct {v3, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1645
    .line 1646
    .line 1647
    sget v9, Lnet/kaki87/soul2/testing/R$id;->set_pay_value:I

    .line 1648
    .line 1649
    invoke-virtual {v3, v9}, Landroid/view/View;->setId(I)V

    .line 1650
    .line 1651
    .line 1652
    invoke-virtual {v3, v5, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 1653
    .line 1654
    .line 1655
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1656
    .line 1657
    invoke-direct {v13, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1658
    .line 1659
    .line 1660
    invoke-virtual {v13, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1661
    .line 1662
    .line 1663
    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1664
    .line 1665
    .line 1666
    invoke-virtual {v0, v3, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1667
    .line 1668
    .line 1669
    new-instance v8, Landroid/widget/RelativeLayout;

    .line 1670
    .line 1671
    invoke-direct {v8, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1672
    .line 1673
    .line 1674
    sget v13, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1675
    .line 1676
    invoke-virtual {v8, v15, v13, v15, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 1677
    .line 1678
    .line 1679
    invoke-static {v7, v6, v4, v11}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 1680
    .line 1681
    .line 1682
    move-result-object v4

    .line 1683
    const/16 v11, 0x10

    .line 1684
    .line 1685
    invoke-virtual {v4, v11, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1686
    .line 1687
    .line 1688
    invoke-virtual {v4, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1689
    .line 1690
    .line 1691
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1692
    .line 1693
    invoke-virtual {v4, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 1694
    .line 1695
    .line 1696
    invoke-virtual {v0, v8, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1697
    .line 1698
    .line 1699
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 1700
    .line 1701
    invoke-direct {v4, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1702
    .line 1703
    .line 1704
    sget v9, Lnet/kaki87/soul2/testing/R$id;->set_pay_title:I

    .line 1705
    .line 1706
    invoke-virtual {v4, v9}, Landroid/view/View;->setId(I)V

    .line 1707
    .line 1708
    .line 1709
    invoke-virtual {v4, v5, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 1710
    .line 1711
    .line 1712
    invoke-virtual {v8, v4, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1713
    .line 1714
    .line 1715
    new-instance v10, Landroidx/appcompat/widget/AppCompatTextView;

    .line 1716
    .line 1717
    invoke-direct {v10, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1718
    .line 1719
    .line 1720
    const/high16 v1, 0x41600000    # 14.0f

    .line 1721
    .line 1722
    invoke-virtual {v10, v5, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 1723
    .line 1724
    .line 1725
    const/16 v1, 0x8

    .line 1726
    .line 1727
    invoke-virtual {v10, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1728
    .line 1729
    .line 1730
    const/4 v1, 0x3

    .line 1731
    invoke-static {v7, v6, v1, v9}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 1732
    .line 1733
    .line 1734
    move-result-object v1

    .line 1735
    sget v2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 1736
    .line 1737
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1738
    .line 1739
    invoke-virtual {v8, v10, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1740
    .line 1741
    .line 1742
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 1743
    .line 1744
    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1745
    .line 1746
    .line 1747
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyRoundItem;

    .line 1748
    .line 1749
    iput-object v4, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1750
    .line 1751
    iput-object v12, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->w:Landroid/widget/ImageView;

    .line 1752
    .line 1753
    iput-object v3, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1754
    .line 1755
    iput-object v10, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1756
    .line 1757
    return-object v1

    .line 1758
    :cond_e
    move v11, v9

    .line 1759
    if-ne v0, v11, :cond_f

    .line 1760
    .line 1761
    new-instance v0, Lcom/mycompany/app/view/MyRoundItem;

    .line 1762
    .line 1763
    invoke-direct {v0, v1}, Lcom/mycompany/app/view/MyRoundItem;-><init>(Landroid/content/Context;)V

    .line 1764
    .line 1765
    .line 1766
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1767
    .line 1768
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyRoundItem;->a(I)V

    .line 1769
    .line 1770
    .line 1771
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1772
    .line 1773
    sget v4, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 1774
    .line 1775
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1776
    .line 1777
    invoke-virtual {v0, v3, v3, v4, v9}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1778
    .line 1779
    .line 1780
    sget v3, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 1781
    .line 1782
    invoke-virtual {v0, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1783
    .line 1784
    .line 1785
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 1786
    .line 1787
    invoke-direct {v3, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1788
    .line 1789
    .line 1790
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1791
    .line 1792
    .line 1793
    invoke-static {v1, v2, v5, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 1794
    .line 1795
    .line 1796
    move-result-object v2

    .line 1797
    invoke-static {v7, v6, v14}, Landroidx/work/impl/workers/a;->g(III)Landroid/widget/RelativeLayout$LayoutParams;

    .line 1798
    .line 1799
    .line 1800
    move-result-object v3

    .line 1801
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 1802
    .line 1803
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 1804
    .line 1805
    .line 1806
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1807
    .line 1808
    .line 1809
    new-instance v3, Lcom/mycompany/app/view/MyButtonImage;

    .line 1810
    .line 1811
    invoke-direct {v3, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 1812
    .line 1813
    .line 1814
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 1815
    .line 1816
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1817
    .line 1818
    .line 1819
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1820
    .line 1821
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 1822
    .line 1823
    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1824
    .line 1825
    .line 1826
    invoke-virtual {v1, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1827
    .line 1828
    .line 1829
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1830
    .line 1831
    .line 1832
    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1833
    .line 1834
    .line 1835
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 1836
    .line 1837
    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1838
    .line 1839
    .line 1840
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyRoundItem;

    .line 1841
    .line 1842
    iput-object v2, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1843
    .line 1844
    iput-object v3, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 1845
    .line 1846
    return-object v1

    .line 1847
    :cond_f
    if-ne v0, v4, :cond_10

    .line 1848
    .line 1849
    new-instance v0, Lcom/mycompany/app/view/MyRoundItem;

    .line 1850
    .line 1851
    invoke-direct {v0, v1}, Lcom/mycompany/app/view/MyRoundItem;-><init>(Landroid/content/Context;)V

    .line 1852
    .line 1853
    .line 1854
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1855
    .line 1856
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyRoundItem;->a(I)V

    .line 1857
    .line 1858
    .line 1859
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1860
    .line 1861
    sget v4, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 1862
    .line 1863
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1864
    .line 1865
    sget v9, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 1866
    .line 1867
    invoke-virtual {v0, v3, v4, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 1868
    .line 1869
    .line 1870
    const/16 v11, 0x10

    .line 1871
    .line 1872
    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 1873
    .line 1874
    .line 1875
    sget v3, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 1876
    .line 1877
    invoke-virtual {v0, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1878
    .line 1879
    .line 1880
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 1881
    .line 1882
    invoke-direct {v3, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1883
    .line 1884
    .line 1885
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1886
    .line 1887
    .line 1888
    invoke-static {v1, v2, v5, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 1889
    .line 1890
    .line 1891
    move-result-object v1

    .line 1892
    invoke-virtual {v0, v1, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1893
    .line 1894
    .line 1895
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 1896
    .line 1897
    invoke-direct {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1898
    .line 1899
    .line 1900
    iput-object v0, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyRoundItem;

    .line 1901
    .line 1902
    iput-object v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1903
    .line 1904
    return-object v2

    .line 1905
    :cond_10
    const/16 v9, 0x13

    .line 1906
    .line 1907
    const/high16 v11, 0x41b00000    # 22.0f

    .line 1908
    .line 1909
    const/high16 v12, 0x41900000    # 18.0f

    .line 1910
    .line 1911
    if-ne v0, v9, :cond_11

    .line 1912
    .line 1913
    new-instance v0, Lcom/mycompany/app/view/MyRoundItem;

    .line 1914
    .line 1915
    invoke-direct {v0, v1}, Lcom/mycompany/app/view/MyRoundItem;-><init>(Landroid/content/Context;)V

    .line 1916
    .line 1917
    .line 1918
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1919
    .line 1920
    invoke-virtual {v0, v15, v15, v3, v15}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1921
    .line 1922
    .line 1923
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 1924
    .line 1925
    invoke-virtual {v0, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1926
    .line 1927
    .line 1928
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 1929
    .line 1930
    invoke-direct {v3, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1931
    .line 1932
    .line 1933
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1934
    .line 1935
    .line 1936
    new-instance v3, Landroid/widget/ImageView;

    .line 1937
    .line 1938
    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1939
    .line 1940
    .line 1941
    sget v8, Lnet/kaki87/soul2/testing/R$id;->set_sbtitle_icon:I

    .line 1942
    .line 1943
    invoke-virtual {v3, v8}, Landroid/view/View;->setId(I)V

    .line 1944
    .line 1945
    .line 1946
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 1947
    .line 1948
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1949
    .line 1950
    .line 1951
    invoke-static {v1, v13}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 1952
    .line 1953
    .line 1954
    move-result v9

    .line 1955
    float-to-int v9, v9

    .line 1956
    invoke-static {v9, v9, v14}, Landroidx/work/impl/workers/a;->g(III)Landroid/widget/RelativeLayout$LayoutParams;

    .line 1957
    .line 1958
    .line 1959
    move-result-object v9

    .line 1960
    invoke-static {v1, v11}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 1961
    .line 1962
    .line 1963
    move-result v11

    .line 1964
    float-to-int v11, v11

    .line 1965
    invoke-virtual {v9, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1966
    .line 1967
    .line 1968
    invoke-virtual {v0, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1969
    .line 1970
    .line 1971
    invoke-static {v1, v2, v5, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 1972
    .line 1973
    .line 1974
    move-result-object v2

    .line 1975
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1976
    .line 1977
    invoke-direct {v5, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1978
    .line 1979
    .line 1980
    invoke-virtual {v5, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1981
    .line 1982
    .line 1983
    invoke-virtual {v5, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1984
    .line 1985
    .line 1986
    invoke-static {v1, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 1987
    .line 1988
    .line 1989
    move-result v1

    .line 1990
    float-to-int v1, v1

    .line 1991
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1992
    .line 1993
    .line 1994
    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1995
    .line 1996
    .line 1997
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 1998
    .line 1999
    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2000
    .line 2001
    .line 2002
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyRoundItem;

    .line 2003
    .line 2004
    iput-object v2, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2005
    .line 2006
    iput-object v3, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->w:Landroid/widget/ImageView;

    .line 2007
    .line 2008
    return-object v1

    .line 2009
    :cond_11
    const/16 v9, 0x14

    .line 2010
    .line 2011
    if-ne v0, v9, :cond_12

    .line 2012
    .line 2013
    new-instance v0, Lcom/mycompany/app/view/MyRoundItem;

    .line 2014
    .line 2015
    invoke-direct {v0, v1}, Lcom/mycompany/app/view/MyRoundItem;-><init>(Landroid/content/Context;)V

    .line 2016
    .line 2017
    .line 2018
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 2019
    .line 2020
    sget v8, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 2021
    .line 2022
    invoke-virtual {v0, v15, v3, v3, v8}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 2023
    .line 2024
    .line 2025
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 2026
    .line 2027
    invoke-direct {v3, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2028
    .line 2029
    .line 2030
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2031
    .line 2032
    .line 2033
    new-instance v3, Landroid/widget/ImageView;

    .line 2034
    .line 2035
    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2036
    .line 2037
    .line 2038
    sget v6, Lnet/kaki87/soul2/testing/R$id;->set_sbfilter_icon:I

    .line 2039
    .line 2040
    invoke-virtual {v3, v6}, Landroid/view/View;->setId(I)V

    .line 2041
    .line 2042
    .line 2043
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 2044
    .line 2045
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2046
    .line 2047
    .line 2048
    invoke-static {v1, v13}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 2049
    .line 2050
    .line 2051
    move-result v8

    .line 2052
    float-to-int v8, v8

    .line 2053
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2054
    .line 2055
    invoke-direct {v9, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2056
    .line 2057
    .line 2058
    const/high16 v8, 0x41200000    # 10.0f

    .line 2059
    .line 2060
    invoke-static {v1, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 2061
    .line 2062
    .line 2063
    move-result v8

    .line 2064
    float-to-int v8, v8

    .line 2065
    iput v8, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2066
    .line 2067
    invoke-static {v1, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 2068
    .line 2069
    .line 2070
    move-result v8

    .line 2071
    float-to-int v8, v8

    .line 2072
    invoke-virtual {v9, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 2073
    .line 2074
    .line 2075
    invoke-virtual {v0, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2076
    .line 2077
    .line 2078
    new-instance v8, Landroidx/appcompat/widget/AppCompatTextView;

    .line 2079
    .line 2080
    invoke-direct {v8, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2081
    .line 2082
    .line 2083
    const/16 v11, 0x10

    .line 2084
    .line 2085
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 2086
    .line 2087
    .line 2088
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 2089
    .line 2090
    .line 2091
    invoke-virtual {v8, v5, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 2092
    .line 2093
    .line 2094
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2095
    .line 2096
    sget v5, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 2097
    .line 2098
    invoke-direct {v2, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2099
    .line 2100
    .line 2101
    invoke-virtual {v2, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2102
    .line 2103
    .line 2104
    const/high16 v12, 0x41600000    # 14.0f

    .line 2105
    .line 2106
    invoke-static {v1, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 2107
    .line 2108
    .line 2109
    move-result v1

    .line 2110
    float-to-int v1, v1

    .line 2111
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 2112
    .line 2113
    .line 2114
    invoke-virtual {v0, v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2115
    .line 2116
    .line 2117
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 2118
    .line 2119
    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2120
    .line 2121
    .line 2122
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyRoundItem;

    .line 2123
    .line 2124
    iput-object v8, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2125
    .line 2126
    iput-object v3, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->w:Landroid/widget/ImageView;

    .line 2127
    .line 2128
    return-object v1

    .line 2129
    :cond_12
    if-ne v0, v8, :cond_13

    .line 2130
    .line 2131
    new-instance v0, Lcom/mycompany/app/view/MyRoundItem;

    .line 2132
    .line 2133
    invoke-direct {v0, v1}, Lcom/mycompany/app/view/MyRoundItem;-><init>(Landroid/content/Context;)V

    .line 2134
    .line 2135
    .line 2136
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 2137
    .line 2138
    invoke-virtual {v0, v3, v15, v3, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 2139
    .line 2140
    .line 2141
    sget v3, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 2142
    .line 2143
    invoke-virtual {v0, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 2144
    .line 2145
    .line 2146
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 2147
    .line 2148
    invoke-direct {v3, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2149
    .line 2150
    .line 2151
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2152
    .line 2153
    .line 2154
    new-instance v3, Landroid/widget/ImageView;

    .line 2155
    .line 2156
    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2157
    .line 2158
    .line 2159
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 2160
    .line 2161
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2162
    .line 2163
    .line 2164
    invoke-static {v1, v13}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 2165
    .line 2166
    .line 2167
    move-result v4

    .line 2168
    float-to-int v4, v4

    .line 2169
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2170
    .line 2171
    invoke-direct {v8, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2172
    .line 2173
    .line 2174
    invoke-virtual {v8, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2175
    .line 2176
    .line 2177
    invoke-virtual {v0, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2178
    .line 2179
    .line 2180
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 2181
    .line 2182
    invoke-direct {v4, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2183
    .line 2184
    .line 2185
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 2186
    .line 2187
    invoke-virtual {v4, v15, v2, v15, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 2188
    .line 2189
    .line 2190
    invoke-static {v4, v5, v10, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->h(Landroidx/appcompat/widget/AppCompatTextView;IFII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 2191
    .line 2192
    .line 2193
    move-result-object v2

    .line 2194
    invoke-virtual {v2, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2195
    .line 2196
    .line 2197
    const/high16 v5, 0x42100000    # 36.0f

    .line 2198
    .line 2199
    invoke-static {v1, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 2200
    .line 2201
    .line 2202
    move-result v1

    .line 2203
    float-to-int v1, v1

    .line 2204
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 2205
    .line 2206
    .line 2207
    invoke-virtual {v0, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2208
    .line 2209
    .line 2210
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 2211
    .line 2212
    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2213
    .line 2214
    .line 2215
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyRoundItem;

    .line 2216
    .line 2217
    iput-object v4, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2218
    .line 2219
    iput-object v3, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->w:Landroid/widget/ImageView;

    .line 2220
    .line 2221
    return-object v1

    .line 2222
    :cond_13
    const/16 v9, 0x16

    .line 2223
    .line 2224
    if-ne v0, v9, :cond_14

    .line 2225
    .line 2226
    new-instance v0, Lcom/mycompany/app/view/MyRoundItem;

    .line 2227
    .line 2228
    invoke-direct {v0, v1}, Lcom/mycompany/app/view/MyRoundItem;-><init>(Landroid/content/Context;)V

    .line 2229
    .line 2230
    .line 2231
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 2232
    .line 2233
    invoke-virtual {v0, v15, v15, v3, v15}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 2234
    .line 2235
    .line 2236
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 2237
    .line 2238
    invoke-virtual {v0, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 2239
    .line 2240
    .line 2241
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 2242
    .line 2243
    invoke-direct {v3, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2244
    .line 2245
    .line 2246
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2247
    .line 2248
    .line 2249
    new-instance v3, Landroid/widget/ImageView;

    .line 2250
    .line 2251
    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2252
    .line 2253
    .line 2254
    sget v9, Lnet/kaki87/soul2/testing/R$id;->set_signin_icon:I

    .line 2255
    .line 2256
    invoke-virtual {v3, v9}, Landroid/view/View;->setId(I)V

    .line 2257
    .line 2258
    .line 2259
    sget-object v15, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 2260
    .line 2261
    invoke-virtual {v3, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2262
    .line 2263
    .line 2264
    invoke-static {v1, v13}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 2265
    .line 2266
    .line 2267
    move-result v13

    .line 2268
    float-to-int v13, v13

    .line 2269
    invoke-static {v13, v13, v14}, Landroidx/work/impl/workers/a;->g(III)Landroid/widget/RelativeLayout$LayoutParams;

    .line 2270
    .line 2271
    .line 2272
    move-result-object v13

    .line 2273
    invoke-static {v1, v11}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 2274
    .line 2275
    .line 2276
    move-result v11

    .line 2277
    float-to-int v11, v11

    .line 2278
    invoke-virtual {v13, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 2279
    .line 2280
    .line 2281
    invoke-virtual {v0, v3, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2282
    .line 2283
    .line 2284
    invoke-static {v1, v2, v5, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 2285
    .line 2286
    .line 2287
    move-result-object v2

    .line 2288
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2289
    .line 2290
    invoke-direct {v5, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2291
    .line 2292
    .line 2293
    invoke-virtual {v5, v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2294
    .line 2295
    .line 2296
    invoke-virtual {v5, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2297
    .line 2298
    .line 2299
    invoke-static {v1, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 2300
    .line 2301
    .line 2302
    move-result v4

    .line 2303
    float-to-int v4, v4

    .line 2304
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 2305
    .line 2306
    .line 2307
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 2308
    .line 2309
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 2310
    .line 2311
    .line 2312
    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2313
    .line 2314
    .line 2315
    new-instance v4, Lcom/mycompany/app/view/MyButtonImage;

    .line 2316
    .line 2317
    invoke-direct {v4, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 2318
    .line 2319
    .line 2320
    const/high16 v12, 0x41600000    # 14.0f

    .line 2321
    .line 2322
    invoke-static {v1, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 2323
    .line 2324
    .line 2325
    move-result v1

    .line 2326
    float-to-int v1, v1

    .line 2327
    invoke-virtual {v4, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 2328
    .line 2329
    .line 2330
    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2331
    .line 2332
    .line 2333
    const/16 v1, 0x8

    .line 2334
    .line 2335
    invoke-virtual {v4, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 2336
    .line 2337
    .line 2338
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2339
    .line 2340
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 2341
    .line 2342
    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2343
    .line 2344
    .line 2345
    invoke-virtual {v1, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2346
    .line 2347
    .line 2348
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2349
    .line 2350
    .line 2351
    invoke-virtual {v0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2352
    .line 2353
    .line 2354
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 2355
    .line 2356
    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2357
    .line 2358
    .line 2359
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyRoundItem;

    .line 2360
    .line 2361
    iput-object v2, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2362
    .line 2363
    iput-object v3, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->w:Landroid/widget/ImageView;

    .line 2364
    .line 2365
    iput-object v4, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 2366
    .line 2367
    return-object v1

    .line 2368
    :cond_14
    const/16 v4, 0x18

    .line 2369
    .line 2370
    if-ne v0, v4, :cond_15

    .line 2371
    .line 2372
    new-instance v0, Lcom/mycompany/app/view/MyRoundItem;

    .line 2373
    .line 2374
    invoke-direct {v0, v1}, Lcom/mycompany/app/view/MyRoundItem;-><init>(Landroid/content/Context;)V

    .line 2375
    .line 2376
    .line 2377
    sget v2, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 2378
    .line 2379
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 2380
    .line 2381
    invoke-virtual {v0, v15, v2, v15, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 2382
    .line 2383
    .line 2384
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 2385
    .line 2386
    invoke-direct {v2, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2387
    .line 2388
    .line 2389
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2390
    .line 2391
    .line 2392
    new-instance v2, Landroid/view/View;

    .line 2393
    .line 2394
    invoke-direct {v2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2395
    .line 2396
    .line 2397
    const/high16 v4, 0x43300000    # 176.0f

    .line 2398
    .line 2399
    invoke-static {v1, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 2400
    .line 2401
    .line 2402
    move-result v1

    .line 2403
    float-to-int v1, v1

    .line 2404
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 2405
    .line 2406
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2407
    .line 2408
    invoke-direct {v5, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2409
    .line 2410
    .line 2411
    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2412
    .line 2413
    .line 2414
    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2415
    .line 2416
    .line 2417
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 2418
    .line 2419
    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2420
    .line 2421
    .line 2422
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyRoundItem;

    .line 2423
    .line 2424
    iput-object v2, v1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->M:Landroid/view/View;

    .line 2425
    .line 2426
    return-object v1

    .line 2427
    :cond_15
    new-instance v3, Lcom/mycompany/app/view/MyRoundItem;

    .line 2428
    .line 2429
    invoke-direct {v3, v1}, Lcom/mycompany/app/view/MyRoundItem;-><init>(Landroid/content/Context;)V

    .line 2430
    .line 2431
    .line 2432
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 2433
    .line 2434
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyRoundItem;->a(I)V

    .line 2435
    .line 2436
    .line 2437
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 2438
    .line 2439
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 2440
    .line 2441
    .line 2442
    const/16 v11, 0x10

    .line 2443
    .line 2444
    invoke-virtual {v3, v11}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 2445
    .line 2446
    .line 2447
    sget v4, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 2448
    .line 2449
    invoke-virtual {v3, v4}, Landroid/view/View;->setMinimumHeight(I)V

    .line 2450
    .line 2451
    .line 2452
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 2453
    .line 2454
    invoke-direct {v4, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2455
    .line 2456
    .line 2457
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2458
    .line 2459
    .line 2460
    const/16 v4, 0x17

    .line 2461
    .line 2462
    if-eq v0, v4, :cond_16

    .line 2463
    .line 2464
    new-instance v9, Landroid/view/View;

    .line 2465
    .line 2466
    invoke-direct {v9, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2467
    .line 2468
    .line 2469
    invoke-static {v5, v5, v8}, Landroidx/work/impl/workers/a;->g(III)Landroid/widget/RelativeLayout$LayoutParams;

    .line 2470
    .line 2471
    .line 2472
    move-result-object v8

    .line 2473
    sget v11, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 2474
    .line 2475
    iput v11, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2476
    .line 2477
    invoke-virtual {v3, v9, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2478
    .line 2479
    .line 2480
    goto :goto_0

    .line 2481
    :cond_16
    move-object v9, v2

    .line 2482
    :goto_0
    new-instance v8, Landroidx/appcompat/widget/AppCompatTextView;

    .line 2483
    .line 2484
    invoke-direct {v8, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2485
    .line 2486
    .line 2487
    sget v11, Lnet/kaki87/soul2/testing/R$id;->set_default_title:I

    .line 2488
    .line 2489
    invoke-virtual {v8, v11}, Landroid/view/View;->setId(I)V

    .line 2490
    .line 2491
    .line 2492
    invoke-virtual {v8, v5, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 2493
    .line 2494
    .line 2495
    invoke-virtual {v3, v8, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 2496
    .line 2497
    .line 2498
    new-instance v10, Landroid/widget/RelativeLayout;

    .line 2499
    .line 2500
    invoke-direct {v10, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2501
    .line 2502
    .line 2503
    const/4 v13, 0x3

    .line 2504
    invoke-static {v7, v6, v13, v11}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 2505
    .line 2506
    .line 2507
    move-result-object v11

    .line 2508
    invoke-virtual {v3, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2509
    .line 2510
    .line 2511
    if-eq v0, v4, :cond_17

    .line 2512
    .line 2513
    new-instance v11, Landroidx/appcompat/widget/AppCompatTextView;

    .line 2514
    .line 2515
    invoke-direct {v11, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2516
    .line 2517
    .line 2518
    sget v15, Lnet/kaki87/soul2/testing/R$id;->set_default_value:I

    .line 2519
    .line 2520
    invoke-virtual {v11, v15}, Landroid/view/View;->setId(I)V

    .line 2521
    .line 2522
    .line 2523
    const/16 v12, 0x8

    .line 2524
    .line 2525
    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 2526
    .line 2527
    .line 2528
    const/high16 v12, 0x41600000    # 14.0f

    .line 2529
    .line 2530
    invoke-virtual {v11, v5, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 2531
    .line 2532
    .line 2533
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2534
    .line 2535
    invoke-direct {v13, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2536
    .line 2537
    .line 2538
    sget v14, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 2539
    .line 2540
    iput v14, v13, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2541
    .line 2542
    invoke-virtual {v10, v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2543
    .line 2544
    .line 2545
    goto :goto_1

    .line 2546
    :cond_17
    const/high16 v12, 0x41600000    # 14.0f

    .line 2547
    .line 2548
    move-object v11, v2

    .line 2549
    :goto_1
    new-instance v13, Landroidx/appcompat/widget/AppCompatTextView;

    .line 2550
    .line 2551
    invoke-direct {v13, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2552
    .line 2553
    .line 2554
    invoke-virtual {v13, v5, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 2555
    .line 2556
    .line 2557
    const/16 v1, 0x8

    .line 2558
    .line 2559
    invoke-virtual {v13, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2560
    .line 2561
    .line 2562
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2563
    .line 2564
    invoke-direct {v1, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2565
    .line 2566
    .line 2567
    if-eq v0, v4, :cond_18

    .line 2568
    .line 2569
    const/4 v0, 0x3

    .line 2570
    invoke-virtual {v1, v0, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2571
    .line 2572
    .line 2573
    :cond_18
    sget v0, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 2574
    .line 2575
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2576
    .line 2577
    invoke-virtual {v10, v13, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2578
    .line 2579
    .line 2580
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 2581
    .line 2582
    invoke-direct {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2583
    .line 2584
    .line 2585
    iput-object v3, v0, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyRoundItem;

    .line 2586
    .line 2587
    iput-object v9, v0, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 2588
    .line 2589
    iput-object v8, v0, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2590
    .line 2591
    iput-object v11, v0, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2592
    .line 2593
    iput-object v13, v0, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2594
    .line 2595
    return-object v0

    .line 2596
    :cond_19
    :goto_2
    new-instance v2, Lcom/mycompany/app/view/MyRoundItem;

    .line 2597
    .line 2598
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyRoundItem;-><init>(Landroid/content/Context;)V

    .line 2599
    .line 2600
    .line 2601
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 2602
    .line 2603
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyRoundItem;->a(I)V

    .line 2604
    .line 2605
    .line 2606
    if-ne v0, v5, :cond_1a

    .line 2607
    .line 2608
    sget v6, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 2609
    .line 2610
    goto :goto_3

    .line 2611
    :cond_1a
    if-ne v0, v4, :cond_1b

    .line 2612
    .line 2613
    goto :goto_3

    .line 2614
    :cond_1b
    const/high16 v4, 0x42000000    # 32.0f

    .line 2615
    .line 2616
    invoke-static {v1, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 2617
    .line 2618
    .line 2619
    move-result v0

    .line 2620
    float-to-int v6, v0

    .line 2621
    :goto_3
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 2622
    .line 2623
    invoke-direct {v0, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2624
    .line 2625
    .line 2626
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2627
    .line 2628
    .line 2629
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 2630
    .line 2631
    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2632
    .line 2633
    .line 2634
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyRoundItem;

    .line 2635
    .line 2636
    return-object v0
.end method

.method public final v(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingListAdapter;->e:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-ge v2, v0, :cond_4

    .line 16
    .line 17
    iget-object v3, p0, Lcom/mycompany/app/setting/SettingListAdapter;->e:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 24
    .line 25
    if-nez v3, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    iget v3, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->b:I

    .line 29
    .line 30
    if-ne v3, p1, :cond_3

    .line 31
    .line 32
    return v2

    .line 33
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_4
    return v1
.end method

.method public final w(I)Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingListAdapter;->e:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-ltz p1, :cond_1

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lt p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingListAdapter;->e:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 24
    return-object p1
.end method

.method public final x(I)Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingListAdapter;->g:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->s(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    :goto_0
    const/4 p1, 0x0

    .line 13
    return-object p1

    .line 14
    :cond_1
    invoke-static {p1}, Lcom/mycompany/app/setting/SettingListAdapter;->y(Landroid/view/View;)Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public final z()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingListAdapter;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/mycompany/app/setting/SettingListAdapter;->l:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingListAdapter;->j:Lcom/mycompany/app/view/GlideRequests;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingListAdapter;->j:Lcom/mycompany/app/view/GlideRequests;

    .line 13
    .line 14
    :cond_0
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingListAdapter;->d:Lcom/mycompany/app/main/MainActivity;

    .line 15
    .line 16
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingListAdapter;->e:Ljava/util/List;

    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingListAdapter;->g:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingListAdapter;->h:Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingListAdapter;->k:Landroid/os/Handler;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->R6(Landroid/os/Handler;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingListAdapter;->k:Landroid/os/Handler;

    .line 28
    .line 29
    return-void
.end method
