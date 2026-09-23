.class Landroidx/appcompat/app/ToolbarActionBar$ToolbarMenuCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarMenuCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ToolbarMenuCallback"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/ToolbarActionBar;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/ToolbarActionBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/appcompat/app/ToolbarActionBar$ToolbarMenuCallback;->a:Landroidx/appcompat/app/ToolbarActionBar;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/appcompat/app/ToolbarActionBar$ToolbarMenuCallback;->a:Landroidx/appcompat/app/ToolbarActionBar;

    .line 4
    .line 5
    iget-boolean v0, p1, Landroidx/appcompat/app/ToolbarActionBar;->d:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p1, Landroidx/appcompat/app/ToolbarActionBar;->a:Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->l:Z

    .line 13
    .line 14
    iput-boolean v1, p1, Landroidx/appcompat/app/ToolbarActionBar;->d:Z

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final onCreatePanelView(I)Landroid/view/View;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Landroid/view/View;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar$ToolbarMenuCallback;->a:Landroidx/appcompat/app/ToolbarActionBar;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/appcompat/app/ToolbarActionBar;->a:Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->a:Landroidx/appcompat/widget/Toolbar;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    return-object p1
.end method
