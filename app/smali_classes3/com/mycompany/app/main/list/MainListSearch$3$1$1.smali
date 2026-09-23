.class Lcom/mycompany/app/main/list/MainListSearch$3$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/list/MainListSearch$3$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/list/MainListSearch$3$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/list/MainListSearch$3$1$1;->c:Lcom/mycompany/app/main/list/MainListSearch$3$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch$3$1$1;->c:Lcom/mycompany/app/main/list/MainListSearch$3$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/list/MainListSearch$3$1;->a:Lcom/mycompany/app/main/list/MainListSearch$3;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/main/list/MainListSearch$3;->c:Lcom/mycompany/app/main/list/MainListSearch;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/main/list/MainListSearch;->M1:Landroidx/viewpager2/widget/ViewPager2;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
