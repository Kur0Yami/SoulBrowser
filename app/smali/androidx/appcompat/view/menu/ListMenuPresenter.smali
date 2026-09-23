.class public Landroidx/appcompat/view/menu/ListMenuPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;
    }
.end annotation


# instance fields
.field public c:Landroid/content/Context;

.field public f:Landroid/view/LayoutInflater;

.field public g:Landroidx/appcompat/view/menu/MenuBuilder;

.field public h:Landroidx/appcompat/view/menu/ExpandedMenuView;

.field public final i:I

.field public j:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field public k:Landroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Landroidx/appcompat/view/menu/ListMenuPresenter;->i:I

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/appcompat/view/menu/ListMenuPresenter;->c:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Landroidx/appcompat/view/menu/ListMenuPresenter;->f:Landroid/view/LayoutInflater;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/ListAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuPresenter;->k:Landroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Landroidx/appcompat/view/menu/ListMenuPresenter;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuPresenter;->k:Landroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuPresenter;->k:Landroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;

    .line 13
    .line 14
    return-object v0
.end method

.method public final b(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuPresenter;->h:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuPresenter;->f:Landroid/view/LayoutInflater;

    .line 6
    .line 7
    sget v1, Landroidx/appcompat/R$layout;->abc_expanded_menu_layout:I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 15
    .line 16
    iput-object p1, p0, Landroidx/appcompat/view/menu/ListMenuPresenter;->h:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 17
    .line 18
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuPresenter;->k:Landroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    new-instance p1, Landroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Landroidx/appcompat/view/menu/ListMenuPresenter;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Landroidx/appcompat/view/menu/ListMenuPresenter;->k:Landroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;

    .line 28
    .line 29
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuPresenter;->h:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 30
    .line 31
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuPresenter;->k:Landroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuPresenter;->h:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 37
    .line 38
    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuPresenter;->h:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 42
    .line 43
    return-object p1
.end method

.method public final c(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuPresenter;->j:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->c(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final d(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuPresenter;->k:Landroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final e()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final f(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final g(Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final h(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuPresenter;->c:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/appcompat/view/menu/ListMenuPresenter;->c:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuPresenter;->f:Landroid/view/LayoutInflater;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Landroidx/appcompat/view/menu/ListMenuPresenter;->f:Landroid/view/LayoutInflater;

    .line 16
    .line 17
    :cond_0
    iput-object p2, p0, Landroidx/appcompat/view/menu/ListMenuPresenter;->g:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 18
    .line 19
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuPresenter;->k:Landroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public final j(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->hasVisibleItems()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p1, Landroidx/appcompat/view/menu/MenuBuilder;->a:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/MenuDialogHelper;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, v0, Landroidx/appcompat/view/menu/MenuDialogHelper;->c:Landroidx/appcompat/view/menu/SubMenuBuilder;

    .line 17
    .line 18
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 19
    .line 20
    invoke-direct {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Landroidx/appcompat/view/menu/ListMenuPresenter;

    .line 24
    .line 25
    iget-object v4, v2, Landroidx/appcompat/app/AlertDialog$Builder;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 26
    .line 27
    iget-object v5, v4, Landroidx/appcompat/app/AlertController$AlertParams;->a:Landroid/view/ContextThemeWrapper;

    .line 28
    .line 29
    sget v6, Landroidx/appcompat/R$layout;->abc_list_menu_item_layout:I

    .line 30
    .line 31
    invoke-direct {v3, v5, v6}, Landroidx/appcompat/view/menu/ListMenuPresenter;-><init>(Landroid/content/ContextWrapper;I)V

    .line 32
    .line 33
    .line 34
    iput-object v3, v0, Landroidx/appcompat/view/menu/MenuDialogHelper;->g:Landroidx/appcompat/view/menu/ListMenuPresenter;

    .line 35
    .line 36
    iput-object v0, v3, Landroidx/appcompat/view/menu/ListMenuPresenter;->j:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 37
    .line 38
    invoke-virtual {p1, v3, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->b(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Landroidx/appcompat/view/menu/MenuDialogHelper;->g:Landroidx/appcompat/view/menu/ListMenuPresenter;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ListMenuPresenter;->a()Landroid/widget/ListAdapter;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iput-object v1, v4, Landroidx/appcompat/app/AlertController$AlertParams;->i:Landroid/widget/ListAdapter;

    .line 48
    .line 49
    iput-object v0, v4, Landroidx/appcompat/app/AlertController$AlertParams;->j:Landroid/content/DialogInterface$OnClickListener;

    .line 50
    .line 51
    iget-object v1, p1, Landroidx/appcompat/view/menu/MenuBuilder;->o:Landroid/view/View;

    .line 52
    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    iput-object v1, v4, Landroidx/appcompat/app/AlertController$AlertParams;->e:Landroid/view/View;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object v1, p1, Landroidx/appcompat/view/menu/MenuBuilder;->n:Landroid/graphics/drawable/Drawable;

    .line 59
    .line 60
    iput-object v1, v4, Landroidx/appcompat/app/AlertController$AlertParams;->c:Landroid/graphics/drawable/Drawable;

    .line 61
    .line 62
    iget-object v1, p1, Landroidx/appcompat/view/menu/MenuBuilder;->m:Ljava/lang/CharSequence;

    .line 63
    .line 64
    iput-object v1, v4, Landroidx/appcompat/app/AlertController$AlertParams;->d:Ljava/lang/CharSequence;

    .line 65
    .line 66
    :goto_0
    iput-object v0, v4, Landroidx/appcompat/app/AlertController$AlertParams;->h:Landroid/content/DialogInterface$OnKeyListener;

    .line 67
    .line 68
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->a()Landroidx/appcompat/app/AlertDialog;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iput-object v1, v0, Landroidx/appcompat/view/menu/MenuDialogHelper;->f:Landroidx/appcompat/app/AlertDialog;

    .line 73
    .line 74
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 75
    .line 76
    .line 77
    iget-object v1, v0, Landroidx/appcompat/view/menu/MenuDialogHelper;->f:Landroidx/appcompat/app/AlertDialog;

    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    const/16 v2, 0x3eb

    .line 88
    .line 89
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 90
    .line 91
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 92
    .line 93
    const/high16 v3, 0x20000

    .line 94
    .line 95
    or-int/2addr v2, v3

    .line 96
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 97
    .line 98
    iget-object v0, v0, Landroidx/appcompat/view/menu/MenuDialogHelper;->f:Landroidx/appcompat/app/AlertDialog;

    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuPresenter;->j:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 104
    .line 105
    if-eqz v0, :cond_2

    .line 106
    .line 107
    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->d(Landroidx/appcompat/view/menu/MenuBuilder;)Z

    .line 108
    .line 109
    .line 110
    :cond_2
    const/4 p1, 0x1

    .line 111
    return p1
.end method

.method public final k(Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuPresenter;->g:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 2
    .line 3
    iget-object p2, p0, Landroidx/appcompat/view/menu/ListMenuPresenter;->k:Landroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;

    .line 4
    .line 5
    invoke-virtual {p2, p3}, Landroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;->c(I)Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const/4 p3, 0x0

    .line 10
    invoke-virtual {p1, p2, p0, p3}, Landroidx/appcompat/view/menu/MenuBuilder;->q(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method
