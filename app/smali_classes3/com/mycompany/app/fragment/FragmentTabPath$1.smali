.class Lcom/mycompany/app/fragment/FragmentTabPath$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/fragment/FragmentTabPath;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/fragment/FragmentTabPath;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/fragment/FragmentTabPath$1;->c:Lcom/mycompany/app/fragment/FragmentTabPath;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/fragment/FragmentTabPath$1;->c:Lcom/mycompany/app/fragment/FragmentTabPath;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/fragment/FragmentTabPath;->g:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/fragment/FragmentTabPath;->g:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    add-int/lit8 v1, v1, -0x1

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/mycompany/app/fragment/FragmentTabPath;->a(I)V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method
