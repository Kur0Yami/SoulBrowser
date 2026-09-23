.class Lcom/mycompany/app/main/MainAppAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainAppAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainAppAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainAppAdapter$2;->c:Lcom/mycompany/app/main/MainAppAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    .line 12
    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/main/MainAppAdapter$2;->c:Lcom/mycompany/app/main/MainAppAdapter;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/mycompany/app/main/MainAppAdapter;->d:Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;

    .line 19
    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    check-cast p1, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-interface {v0, p1}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;->a(I)V

    .line 29
    .line 30
    .line 31
    :cond_3
    :goto_0
    return-void
.end method
