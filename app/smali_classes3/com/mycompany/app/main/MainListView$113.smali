.class Lcom/mycompany/app/main/MainListView$113;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainListView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$113;->a:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-wide/16 p3, 0x0

    .line 2
    .line 3
    cmp-long p3, p1, p3

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    if-lez p3, :cond_0

    .line 7
    .line 8
    const/4 p3, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move p3, p4

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView$113;->a:Lcom/mycompany/app/main/MainListView;

    .line 12
    .line 13
    iput-boolean p3, v0, Lcom/mycompany/app/main/MainListView;->m0:Z

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2, p4}, Lcom/mycompany/app/main/MainListView;->L(JZ)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
