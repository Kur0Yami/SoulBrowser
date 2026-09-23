.class Lcom/mycompany/app/main/MainDownAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainDownAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainDownAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownAdapter$2;->c:Lcom/mycompany/app/main/MainDownAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownAdapter$2;->c:Lcom/mycompany/app/main/MainDownAdapter;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainDownAdapter;->h:Lcom/mycompany/app/main/MainDownAdapter$MainDownListener;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainDownAdapter;->v(Lcom/mycompany/app/main/MainDownAdapter;Landroid/view/View;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-interface {v1, p1}, Lcom/mycompany/app/main/MainDownAdapter$MainDownListener;->c(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
