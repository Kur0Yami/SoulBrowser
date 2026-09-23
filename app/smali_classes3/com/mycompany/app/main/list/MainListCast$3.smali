.class Lcom/mycompany/app/main/list/MainListCast$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/list/MainListCast;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/list/MainListCast;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/list/MainListCast$3;->c:Lcom/mycompany/app/main/list/MainListCast;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    sget p1, Lcom/mycompany/app/pref/PrefList;->r:I

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    iget-object v1, p0, Lcom/mycompany/app/main/list/MainListCast$3;->c:Lcom/mycompany/app/main/list/MainListCast;

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    sget-object p1, Lcom/mycompany/app/pref/PrefPath;->w:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1, p1}, Lcom/mycompany/app/main/MainUtil;->F4(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput-boolean p1, v1, Lcom/mycompany/app/main/list/MainListCast;->E1:Z

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const/4 v0, 0x6

    .line 18
    if-ne p1, v0, :cond_1

    .line 19
    .line 20
    sget-object p1, Lcom/mycompany/app/pref/PrefPath;->y:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v1, p1}, Lcom/mycompany/app/main/MainUtil;->F4(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput-boolean p1, v1, Lcom/mycompany/app/main/list/MainListCast;->E1:Z

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    sget-object p1, Lcom/mycompany/app/pref/PrefPath;->x:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v1, p1}, Lcom/mycompany/app/main/MainUtil;->F4(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iput-boolean p1, v1, Lcom/mycompany/app/main/list/MainListCast;->E1:Z

    .line 36
    .line 37
    return-void
.end method
