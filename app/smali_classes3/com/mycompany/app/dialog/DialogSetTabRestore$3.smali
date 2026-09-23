.class Lcom/mycompany/app/dialog/DialogSetTabRestore$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetTabRestore;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetTabRestore;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabRestore$3;->a:Lcom/mycompany/app/dialog/DialogSetTabRestore;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabRestore$3;->a:Lcom/mycompany/app/dialog/DialogSetTabRestore;

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    const/4 p4, 0x1

    .line 6
    if-eq p2, p4, :cond_0

    .line 7
    .line 8
    sget p2, Lcom/mycompany/app/dialog/DialogSetTabRestore;->j0:I

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iput-boolean p3, p1, Lcom/mycompany/app/dialog/DialogSetTabRestore;->h0:Z

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iput-boolean p3, p1, Lcom/mycompany/app/dialog/DialogSetTabRestore;->g0:Z

    .line 18
    .line 19
    return-void
.end method
