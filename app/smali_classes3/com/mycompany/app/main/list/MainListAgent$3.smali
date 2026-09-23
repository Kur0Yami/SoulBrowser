.class Lcom/mycompany/app/main/list/MainListAgent$3;
.super Lcom/mycompany/app/main/MainListListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/list/MainListAgent;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/list/MainListAgent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/list/MainListAgent$3;->a:Lcom/mycompany/app/main/list/MainListAgent;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final f(ILcom/mycompany/app/main/MainItem$ChildItem;Z)V
    .locals 2

    .line 1
    iget-wide v0, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 2
    .line 3
    long-to-int p1, v0

    .line 4
    iget-object p2, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 5
    .line 6
    const/4 p3, 0x0

    .line 7
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListAgent$3;->a:Lcom/mycompany/app/main/list/MainListAgent;

    .line 8
    .line 9
    invoke-static {v0, p1, p2, p3}, Lcom/mycompany/app/main/list/MainListAgent;->D0(Lcom/mycompany/app/main/list/MainListAgent;ILjava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final r()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListAgent$3;->a:Lcom/mycompany/app/main/list/MainListAgent;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/list/MainListAgent;->G1:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->p:I

    .line 9
    .line 10
    const/4 v2, 0x4

    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainSelectAdapter;->y(I)V

    .line 14
    .line 15
    .line 16
    :cond_1
    :goto_0
    return-void
.end method
