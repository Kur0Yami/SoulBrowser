.class Lcom/mycompany/app/main/MainListView$106;
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
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$106;->a:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p3, p0, Lcom/mycompany/app/main/MainListView$106;->a:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    iget-object p4, p3, Lcom/mycompany/app/main/MainListView;->F1:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p3, Lcom/mycompany/app/main/MainListView;->F1:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 7
    .line 8
    invoke-virtual {p3}, Lcom/mycompany/app/main/MainListView;->v()V

    .line 9
    .line 10
    .line 11
    if-eqz p4, :cond_0

    .line 12
    .line 13
    invoke-interface {p4}, Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;->a()V

    .line 14
    .line 15
    .line 16
    :cond_0
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    cmp-long p4, p1, v0

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    if-lez p4, :cond_1

    .line 22
    .line 23
    const/4 p4, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move p4, v0

    .line 26
    :goto_0
    iput-boolean p4, p3, Lcom/mycompany/app/main/MainListView;->m0:Z

    .line 27
    .line 28
    invoke-virtual {p3, p1, p2, v0}, Lcom/mycompany/app/main/MainListView;->L(JZ)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
