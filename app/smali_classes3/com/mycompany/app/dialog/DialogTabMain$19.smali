.class Lcom/mycompany/app/dialog/DialogTabMain$19;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogTabMain;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMain;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$19;->a:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/mycompany/app/dialog/DialogTabMain;->l1:[I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$19;->a:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne p1, v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v2, v1

    .line 14
    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/dialog/DialogTabMain;->L(ZZ)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
