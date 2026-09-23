.class public Lcom/google/api/services/drive/Drive$Teamdrives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/Drive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Teamdrives"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/drive/Drive$Teamdrives$Update;,
        Lcom/google/api/services/drive/Drive$Teamdrives$List;,
        Lcom/google/api/services/drive/Drive$Teamdrives$Get;,
        Lcom/google/api/services/drive/Drive$Teamdrives$Delete;,
        Lcom/google/api/services/drive/Drive$Teamdrives$Create;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/services/drive/Drive;


# direct methods
.method public constructor <init>(Lcom/google/api/services/drive/Drive;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Teamdrives;->this$0:Lcom/google/api/services/drive/Drive;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;Lcom/google/api/services/drive/model/TeamDrive;)Lcom/google/api/services/drive/Drive$Teamdrives$Create;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/api/services/drive/Drive$Teamdrives$Create;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/drive/Drive$Teamdrives$Create;-><init>(Lcom/google/api/services/drive/Drive$Teamdrives;Ljava/lang/String;Lcom/google/api/services/drive/model/TeamDrive;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Teamdrives;->this$0:Lcom/google/api/services/drive/Drive;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public delete(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Teamdrives$Delete;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/api/services/drive/Drive$Teamdrives$Delete;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/api/services/drive/Drive$Teamdrives$Delete;-><init>(Lcom/google/api/services/drive/Drive$Teamdrives;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Teamdrives;->this$0:Lcom/google/api/services/drive/Drive;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Teamdrives$Get;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/api/services/drive/Drive$Teamdrives$Get;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/api/services/drive/Drive$Teamdrives$Get;-><init>(Lcom/google/api/services/drive/Drive$Teamdrives;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Teamdrives;->this$0:Lcom/google/api/services/drive/Drive;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public list()Lcom/google/api/services/drive/Drive$Teamdrives$List;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/api/services/drive/Drive$Teamdrives$List;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/api/services/drive/Drive$Teamdrives$List;-><init>(Lcom/google/api/services/drive/Drive$Teamdrives;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/api/services/drive/Drive$Teamdrives;->this$0:Lcom/google/api/services/drive/Drive;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public update(Ljava/lang/String;Lcom/google/api/services/drive/model/TeamDrive;)Lcom/google/api/services/drive/Drive$Teamdrives$Update;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/api/services/drive/Drive$Teamdrives$Update;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/drive/Drive$Teamdrives$Update;-><init>(Lcom/google/api/services/drive/Drive$Teamdrives;Ljava/lang/String;Lcom/google/api/services/drive/model/TeamDrive;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Teamdrives;->this$0:Lcom/google/api/services/drive/Drive;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
